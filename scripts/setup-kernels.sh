#!/usr/bin/env bash
set -euo pipefail

ENV_ROOT="$HOME/envs"

mkdir -p "$ENV_ROOT"

echo "Scanning top-level directories in $PWD for requirements.txt..."

for dir in "$PWD"/*; do
  # Only consider directories
  [ -d "$dir" ] || continue

  req_file="$dir/requirements.txt"
  if [ -f "$req_file" ]; then
    name="$(basename "$dir")"
    env_path="$ENV_ROOT/$name"

    echo "==> Setting up env & kernel for project: $name"
    echo "    Requirements: $req_file"
    echo "    Env path:     $env_path"

    python -m venv "$env_path"
    "$env_path/bin/pip" install --upgrade pip
    "$env_path/bin/pip" install -r "$PWD"/requirements.txt
    "$env_path/bin/pip" install -r "$req_file"

    # Register Jupyter kernel
    "$env_path/bin/python" -m ipykernel install \
      --user \
      --name "$name" \
      --display-name "Python ($name)"

    for nb_file in "$dir"/*.ipynb; do
      echo "    Setting kernel for notebook: $nb_file"
      python scripts/set-kernel.py "$nb_file" "$name"
    done
  fi
done

echo "Done setting up project kernels."
