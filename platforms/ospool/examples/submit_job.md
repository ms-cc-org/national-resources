# Submit Batch Job 

- Once you are logged in to ospool cluster, create [monte_carlo.py](../../../examples/monte_carlo.py) to your home folder location which would usually be "/home/ospool-username"
- Create [run_py.sh](./run_py.sh) file on your home folder
- Create [monte_carlo.sub](./monte_carlo.sub) file on your home folder
-  Run the command `condor_submit monte_carlo.sub `to submit the job

```
$ condor_submit monte_carlo.sub 
Submitting job(s).
1 job(s) submitted to cluster 14994430.
To monitor your job(s), run: condor_watch_q -clusters 14994430

```
- To view the status of the job
```
$ condor_q


-- Schedd: ap40.uw.osg-htc.org : <128.105.68.62:9618?... @ 08/26/26 11:53:49
OWNER         BATCH_NAME      SUBMITTED   DONE   RUN    IDLE  TOTAL JOB_IDS
sanju.timsina ID: 14994430   8/26 11:53      _      _      1      1 14994430.0

Total for query: 1 jobs; 0 completed, 0 removed, 1 idle, 0 running, 0 held, 0 suspended 
Total for sanju.timsina@ap40.uw.osg-htc.org: 1 jobs; 0 completed, 0 removed, 1 idle, 0 running, 0 held, 0 suspended 
Total for all users: 60748 jobs; 0 completed, 1 removed, 36226 idle, 6309 running, 18212 held, 0 suspended
```
- Once the job is completed, output in the .out folder specified on your .sub file
```
$ cat monte-carlo_14994430_0.out
--> Starting Monte Carlo Pi calculation with 10,000,000 samples...
--------------------------------------------------
Calculated Pi Estimate : 3.142345
Actual Value of Pi     : 3.141593
Execution Time         : 2.066 seconds
--------------------------------------------------
```
