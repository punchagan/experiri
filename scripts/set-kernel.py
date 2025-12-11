#!/usr/bin/env python
import sys
import nbformat

if len(sys.argv) < 3:
    print("Usage: set-kernel.py NOTEBOOK.ipynb KERNEL_NAME")
    sys.exit(1)

nb_path = sys.argv[1]
kernel_name = sys.argv[2]
display_name = f"Python ({kernel_name})"

nb = nbformat.read(nb_path, as_version=4)

nb.metadata["kernelspec"] = {
    "name": kernel_name,
    "display_name": display_name,
    "language": "python",
}

nbformat.write(nb, nb_path)
print(f"Updated {nb_path} to kernelspec: {kernel_name!r} / {display_name!r}")
