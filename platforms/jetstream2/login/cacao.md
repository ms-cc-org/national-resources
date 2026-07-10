# CACAO
- CACAO, Cloud Automation and Continuous Analysis Orchestration, is an orchestration service for researchers and educators that eliminates the complexity of using multiple clouds. 
- By focusing on getting stuff done, CACAO helps transform research and education in a multi-cloud world.
- CACAO helps you use clouds with ease of use, flexibility, and collaboration.
- You can organize your Openstack resources – servers, volumes, containers, and more – by project. 
- You can use CACAO on Jetstream 2 to create simple deployments: launch a vm with the tools you use, do your work, and delete those resources when you’re done. 
- You can also use CACAO to create other more complex deployments that require the orchestration of mutiple servers and storage, such as a JupyterHub for a workshop or a Kubernetes cluster.
- CACAO helps adapt the cloud to fit your needs. Under the hood, your cloud resources are created using pre-defined Hashicorp Terraform templates. 
- If you don’t know Terraform, don’t worry – you don’t need to know Terraform to use CACAO; however, you can create your own Openstack Terraform templates if you wish to level-up your CACAO workflow game. 
- Future features in CACAO will include support for AWS/GCP/Azure Terraform as well as non-Terraform-based templates, such as native Kubernetes or Nextflow templates.


# Getting Started

## 1. Login to CACAO
- In your browser, connect to https://cacao.jetstream-cloud.org
- Click Sign-In button.
- If you are not currently logged into ACCESS, you should select the “ACCESS-CI (XSEDE)” identity provider
- Enter your ACCESS login credentials
- You may need to authenticate with your two-factor
- Upon successful login, you will land into the CACAO dashboard

## 2. Add your Jetstream 2 credentials
- Click on the Credentials menu
- Click on Add Credential button
- Select Cloud Credential
- Select Jetstream 2
- Click Next
- Select the ACCESS allocation that you wish to import into CACAO (if you belong to multiple allocations, you can select multiple allocations)
- Click on the Add button

## 3. Add a Public SSH Key
- Click on the Credentials menu
- Click on the Add Credential button
- Select Public SSH Key
- Enter a name for your public ssh key
- Paste in your public ssh key
- Click on the Add button

## 4. Create your first deployment
- Click on the Deployments menu
- Click on the Add Deployment button
- Select Workspace, then Next button
- Select the “simple launch of one or more vms” Template, then Go Button
- Select the region; if unsure, “IU” is the default
- Click Next button
- Enter your deployment values A. Deployment Name B. Select your Image C. Number of instances D. Size (also called ‘flavor’)
- Click Next button
- Review the deployment settings, then click Submit button