# Openstack CLI
There are many options and tools for using the OpenStack API from the command line. Follow the instructions in the table below to set up a security policy and network, launch and manage a VM and then remove the entire structure.

# Important Notes
- It is possible to create entities with the same name; e.g. you could create two networks with the same name; however, they will have different Universally Unique Indentifiers (UUIDs). When this occurs you may get a cryptic error message about that entity may not exist or that there are multiple entities with that name. In this case, you must address the entity by its UUID.
- It is important to understand that everything is owned by the project. Other users in your project can see and manipulate entities that you have created. Be careful in your naming and pay attention to the things you are manipulating.

# Getting Started
- You should be running the latest version of the clients.
- Using python-openstack >= 5.0 is recommended as it uses Python3 and removes the dependencies on the now deprecated Python2. 
- See [Installing Openstack Clients](https://docs.jetstream-cloud.org/ui/cli/clients/) for more information.
- The next thing you’ll need to do before being able to do any CLI commands is have an appropriate openrc file. See [Authentication (Logging In)](https://docs.jetstream-cloud.org/ui/cli/auth/) for more information.
- You can make the output look nicer in your terminal with the –fit-width option:
'''
openstack image show Featured-Ubuntu20 --fit-width
'''
Optionally, you can make that permanent by adding the following to your environment.
'''
export CLIFF_FIT_WIDTH=1
'''
- You’ll then need to register an ssh key, create a security group and network before launching your first VMs. More information may be found here:
    - [Register an SSH key](https://docs.jetstream-cloud.org/ui/cli/managing-ssh-keys/)
    - [Create a security group](https://docs.jetstream-cloud.org/ui/cli/security_group/)
    - [Create a network](https://docs.jetstream-cloud.org/ui/cli/network/)
    - [Create and launch a VM](https://docs.jetstream-cloud.org/ui/cli/launch/)
    - [Instance management](https://docs.jetstream-cloud.org/ui/cli/manage/)

# References:
https://docs.jetstream-cloud.org/ui/cli/overview/
