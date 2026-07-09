# How to use the cluster
There are three main ways to use the cluster:
## 1. NRP-hosted Jupyter Platform
- You need to be part of namespace to use the NRP hosted JupyterHub service
- Your institution needs to be part of CILogon
- You can access the NRP-hosted JupyterHub platform by visiting the [JupyterHub link](https://jupyterhub-west.nrp-nautilus.io/) and logging in with your institutional credentials. Once authenticated, you can choose the hardware specs to spawn your instance and run Jupyter notebooks as usual.
- Your persistent home folder initially will be limited to 5GB. If you need more, you can request it to be extended.
- Your Jupyter container will shut down 1hr after your browser disconnects from it. If you need your job to keep running, don’t close the browser window. You could either use a desktop with a persistent Internet connection or only use this for testing your code.
- Refer to [NRP Jupyterhub documentation](https://nrp.ai/documentation/userdocs/jupyter/jupyterhub-service/) for more information.

## 2. NRP-hosted Coder Platform
- You do need to be part of a namespace to use the NRP-hosted Coder service.
- Your institution needs to be part of CILogon.
- Coder provides an easy-to-use, JupyterHub-like experience, and you can use the NRP Nautilus cluster without Kubernetes knowledge.
- Coder also runs on the web browser.
- You can run your code without worrying about the underlying infrastructure.
- You can access the NRP-hosted Coder platform by visiting the [Coder link](https://coder.nrp-nautilus.io/) and logging in with your institutional credentials using OpenID Connect (once the cluster admins approve your account).
- Look at the [Coder documentation](https://nrp.ai/documentation/userdocs/coder/coder) to learn more about this option.

## 3. Interfacing with Kubernetes using kubectl tool
- You need to be part of at least one namespace.
- Your institution needs to be part of CILogon.
- Need to know basic Kubernetes. Complete the [Basic Kubernetes tutorial](https://nrp.ai/documentation/userdocs/tutorial/basic).
- This method provides greater control over your computing resources but requires basic Kubernetes knowledge.
- You can create pods, jobs, and deployments while specifying the required CPU, GPU, memory, and other resources.
- This is particularly useful for running custom software stacks or jobs with specific resource requirements.
- Look at [NRP Kubernetes documentation](https://nrp.ai/documentation/userdocs/start/using-nautilus/#kubernetes-concepts) for more information.


## 4. Using managed cluster services
- Although you can run your own containers, there are services and resources already deployed by cluster admins that you can use without creating those yourself.
- Look at [NRP Deployed Services](https://nrp.ai/documentation/userdocs/start/resources/) for more information
