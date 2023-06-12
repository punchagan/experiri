define BENCH_DATA_1
{
  "config": null,
  "version": 2,
  "results": [
    {
      "name": "bench_1_experiri_1",
      "metrics": [
	{
	  "name": "time",
	  "value": 4.02,
	  "units": "secs"
	},
	{
	  "name": "ops_per_sec",
	  "value": 690.0,
	  "units": "num/sec"
	},
	{
	  "name": "mbs_per_sec",
	  "value": 199,
	  "units": "mbps"
	}
      ]
    },
    {
      "name": "bench_1_experiri_2",
      "metrics": [
	{
	  "name": "time",
	  "value": 10.04,
	  "units": "secs"
	},
	{
	  "name": "ops_per_sec",
	  "value": 1455.0,
	  "units": "num/sec"
	},
	{
	  "name": "mbs_per_sec",
	  "value": 17.0,
	  "units": "mbps"
	}
      ]
    }
  ]
}
endef

define BENCH_DATA_2
{
  "config": null,
  "version": 2,
  "results": [
    {
      "name": "bench_2_experiri_1",
      "metrics": [
	{
	  "name": "time",
	  "value": 0.01,
	  "units": "secs"
	},
	{
	  "name": "ops_per_sec",
	  "value": 50.0,
	  "units": "num/sec"
	},
	{
	  "name": "mbs_per_sec",
	  "value": 3.0,
	  "units": "mbps"
	}
      ]
    },
    {
      "name": "bench_2_experiri_2",
      "metrics": [
	{
	  "name": "time",
	  "value": 0.07,
	  "units": "secs"
	},
	{
	  "name": "ops_per_sec",
	  "value": 877.0,
	  "units": "num/sec"
	},
	{
	  "name": "mbs_per_sec",
	  "value": 23.0,
	  "units": "mbps"
	}
      ]
    }
  ]
}
endef

define BENCH_DATA_3
{
  "config": null,
  "version": 2,
  "results": [
    {
      "name": "dune monorepo benchmarks",
      "metrics": [
	{
	  "name": "build from scratch",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    1289.9698779582977
	  ],
	  "description": ""
	},
	{
	  "name": "null build",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    69.08366298675537,
	    69.57063889503479,
	    70.53005790710449
	  ],
	  "description": ""
	},
	{
	  "name": "watch mode: changing file in 'base' library",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    75.59359002113342,
	    77.02367401123047,
	    78.68333387374878
	  ],
	  "description": ""
	},
	{
	  "name": "watch mode: changing file in 'file_path' library",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    19.963576078414917,
	    20.183913946151733,
	    21.58584499359131
	  ],
	  "description": ""
	},
	{
	  "name": "watch mode: fixing error in file in 'base' library",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    71.78005290031433,
	    72.773118019104,
	    73.1259868144989
	  ],
	  "description": ""
	},
	{
	  "name": "watch mode: fixing error in file in 'file_path' library",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    19.216557025909424,
	    19.798189163208008,
	    20.353009939193726
	  ],
	  "description": ""
	},
	{
	  "name": "watch mode: introducing error in file in 'base' library",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    7.58079981803894,
	    8.186239957809448,
	    8.794840812683105
	  ],
	  "description": ""
	},
	{
	  "name": "watch mode: introducing error in file in 'file_path' library",
	  "lines": [
	    [
	      11914,
	      11972
	    ]
	  ],
	  "trend": "",
	  "units": "sec",
	  "value": [
	    2.560544013977051,
	    2.6215147972106934,
	    2.6555368900299072
	  ],
	  "description": ""
	}
      ]
    }
  ]
}
endef


export BENCH_DATA_1
export BENCH_DATA_2
export BENCH_DATA_3
bench:
	@echo "$$BENCH_DATA_3" | jq -M .
