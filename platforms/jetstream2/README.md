# Jetstream2
Jetstream2 is a user-friendly cloud computing environment offering zero-cost, always-on infrastructure to researchers and educators through the ACCESS ecosystem and support from the National Science Foundation.</br></br>
With a focus on ease of use and broad accessibility, Jetstream2 is designed for those who have not previously used high performance computing and software resources.

# Prerequisites
- You must have an active ACCESS allocation on Jetstream2.


# Logging in to Jetstream2
There are multiple ways to login to Jetsteram2. </br>
If you are new to Jetstream2 and unsure which interface to use, Exosphere is a great place to start. Whether you are exploring new software tools, running compute-intensive jobs, teaching a course/workshop, or building a science gateway, Exosphere can likely help you reach your goals.
- [Exosphere (Graphical User Interface)](../jetstream2/login/exosphere.md)
- [Horizon (Graphical User Interface](../jetstream2/login/horizon.md)
- [CACAO (Grpahical User Interface)](../jetstream2/login/cacao.md)
- [OpenStack CLI (Command Line Interface)](../jetstream2/login/openstack-cli.md)

# Example

Once you are logged in, let's run a monte carlo pi estimation example on jetstream2 cluster. Follow the steps below to run the code. Before this steps, you should have already logged in and create an instance. For this example, we will use the Exosphere.
- Create a volume and attach to the instance you created in exosphere. See https://docs.jetstream-cloud.org/ui/exo/storage/ on how to create volume and attach it to the instance.
- Transfer the data i.e. monte_carlo.py to the attached volume location which is usually be under the location "/media/volume/YOUR_VOLUME_NAME". See https://docs.jetstream-cloud.org/ui/exo/exo-filetransfer/ on how to transfer data to the volume location.
- Make sure python is installed. To check if python is installed run the following command on the exosphere terminal.
```
exouser@monte-carlo:/media/volume/Data$ python3 --version
Python 3.12.3

```
If there is no python installed, you can run following commnd to install python
```
exouser@monte-carlo:/media/volume/Data$ sudo su -
root@monte-carlo:~# apt install python3
root@monte-carlo:~# exit
```
- Now run the monte carlo calculation. Below are some of the outputs generated on random number of samples. Your output might be slight different that the output here.

```
exouser@monte-carlo:/media/volume/Data$ python3 monte_carlo.py 
--> Starting Monte Carlo Pi calculation with 10,000,000 samples...
--------------------------------------------------
Calculated Pi Estimate : 3.141552
Actual Value of Pi     : 3.141593
Execution Time         : 2.486 seconds
--------------------------------------------------


exouser@monte-carlo:/media/volume/Data$ python3 monte_carlo.py 50000000
--> Starting Monte Carlo Pi calculation with 50,000,000 samples...
--------------------------------------------------
Calculated Pi Estimate : 3.141983
Actual Value of Pi     : 3.141593
Execution Time         : 11.323 seconds
--------------------------------------------------


exouser@monte-carlo:/media/volume/Data$ python3 monte_carlo.py 100000000
--> Starting Monte Carlo Pi calculation with 100,000,000 samples...
--------------------------------------------------
Calculated Pi Estimate : 3.141940
Actual Value of Pi     : 3.141593
Execution Time         : 20.923 seconds
--------------------------------------------------


exouser@monte-carlo:/media/volume/Data$ python3 monte_carlo.py 100000000000
--> Starting Monte Carlo Pi calculation with 100,000,000,000 samples...

--------------------------------------------------
Calculated Pi Estimate : 3.141598
Actual Value of Pi     : 3.141593
Execution Time         : 20298.872 seconds
--------------------------------------------------

```


# References:
https://docs.jetstream-cloud.org/getting-started/overview/
https://docs.jetstream-cloud.org/ui/
