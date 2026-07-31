# Submit Batch Job 

- Once you are logged in to aces cluster, copy [monte_carlo.py](../../../examples/monte_carlo.py) to your home folder location which would uaually be "/home/<aces-username>"
- Create [job.sh](./job.sh) file
- Run the command `sbatch job.sh`to submit the job
```
$ sbatch job.sh
sbatch: Job submitted with no account set
Submitted batch job 2003073
```
- The status of the jobs can be viewed as
```
$ sacct -j 2003073
     JobID              JobName                 User NCPUS NNodes                State      Elapsed                Start                  End     ReqMem NodeList                                           
---------- -------------------- -------------------- ----- ------ -------------------- ------------ -------------------- -------------------- ---------- -------------------------------------------------- 
   2003073          JobExample2           u.st350865     0      1              PENDING     00:00:00              Unknown              Unknown         1G None assigned   
```


```
$ sacct -j 2003073
     JobID              JobName                 User NCPUS NNodes                State      Elapsed                Start                  End     ReqMem NodeList                                           
---------- -------------------- -------------------- ----- ------ -------------------- ------------ -------------------- -------------------- ---------- -------------------------------------------------- 
   2003073          JobExample2           u.st350865     1      1              RUNNING     00:00:00  2026-07-31T14:43:40              Unknown         1G ac006                                              
2003073.b+                batch                          1      1              RUNNING     00:00:00  2026-07-31T14:43:40              Unknown            ac006                                              
2003073.e+               extern                          1      1              RUNNING     00:00:00  2026-07-31T14:43:40              Unknown            ac006   
```


```
$ sacct -j 2003073
     JobID              JobName                 User NCPUS NNodes                State      Elapsed                Start                  End     ReqMem NodeList                                           
---------- -------------------- -------------------- ----- ------ -------------------- ------------ -------------------- -------------------- ---------- -------------------------------------------------- 
   2003073          JobExample2           u.st350865     1      1            COMPLETED     00:00:02  2026-07-31T14:43:40  2026-07-31T14:43:42         1G ac006                                              
2003073.b+                batch                          1      1            COMPLETED     00:00:02  2026-07-31T14:43:40  2026-07-31T14:43:42            ac006                                              
2003073.e+               extern                          1      1            COMPLETED     00:00:02  2026-07-31T14:43:40  2026-07-31T14:43:42            ac006   
```

- The output will be in the file we set on the batch script

```
$ cat Example2.2003073 
--> Starting Monte Carlo Pi calculation with 10,000,000 samples...
--------------------------------------------------
Calculated Pi Estimate : 3.141894
Actual Value of Pi     : 3.141593
Execution Time         : 1.867 seconds
--------------------------------------------------
```

# Reference:
https://hprc.tamu.edu/kb/User-Guides/ACES/Computing_Environment/#modules
https://hprc.tamu.edu/kb/User-Guides/ACES/Batch/
