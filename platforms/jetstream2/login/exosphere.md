# 1.  When to Use Exosphere
If you are new to Jetstream2 and unsure which interface to use, Exosphere is a great place to start. Whether you are exploring new software tools, running compute-intensive jobs, teaching a course/workshop, or building a science gateway, Exosphere can likely help you reach your goals.

# 2.  Login to Exosphere
- Click https://jetstream2.exosphere.app/exosphere/ to login to exosphere
- You should be presented with a blank page saying you are not logged into any allocations yet.
- Click Add allocation.
- Click Add ACCESS Account
- Select an Identity Provider -> Choose ACCESS CI
- Log in using your ACCESS credentials
- Choose which allocations you want to use. 
- After adding an allocation, you should be returned to the home page, where you should see a card for each allocation you just added. From this screen, you can add more allocations, remove all your allocations.</br>

For more information refer https://docs.jetstream-cloud.org/getting-started/login/

# 3. Creating your First Instance
An instance is essentially an entire computer that exists virtually in “the cloud”, meaning you can only interact with it over the internet. Just like if you were to go shopping for a new computer, when you create an instance you can choose the operating system and how powerful you want the instance to be. To create instance follow the steps below:
- Click on the allocation card you want to use.
- You should be presented with an overview page with several cards indicating instances, volumes, Public IP Addresses, etc. If you are using a brand new allocation, most of these cards will be empty. 
- Click on the Create button in the top right and select Instance.
- Next you get to choose the instance ‘source’, or image. An image is essentially just a copy of an instance which includes the operating system and every installed software package. Images can be used as the base for future instances so you don’t have to reinstall everything whenever you want a new instance. Jetstream2 staff maintains and distributes several featured images that include a few popular Linux operating systems and some basic software packages.
- Give your Instance a Name. We recommend giving your instance a unique and descriptive name so that you or others will have some idea of what the instance is for at a later date. Alternatively, if you are just testing things out and plan to delete the instance later, we offer a button to generate a randomized name.
- Choose a Flavor. The flavor determines the CPU count, the RAM available, and the size of the root disk. 
- Choose a Root Disk Size. We recommend you keep the default size selected here as this will not count against your total storage quota. If you need more space, you can always attach a volume for more space later. Also note that larger flavors have 60 GB of root disk instead of 20 GB.
- How Many Instances. Leave this at 1
- Enable Web Desktop. Select Yes to enable the Web Desktop. We will be using the Web Desktop later in this tutorial, so make sure to enable it here.
- Choose an SSH Public Key. Leave as None for now.
- Create. Don’t worry about Advanced Options. Go ahead and scroll all the way down and select Create to start building your instance.
- Instances can take several minutes to build. After creating your instance you should be sent back to the home screen, where you should see the instance you just created with a Building sticker.
- When the instance is ready, you will see the status sticker in the top right of the instance details page change from a yellow Building sticker to a green Ready sticker.</br>

What if the status sticker for your instance changes to a red Error sticker instead?</br>

Sometimes an instance will fail to initialize. There are any number of reasons this can occur. Don’t worry though. The instance you created is brand new, so there is no harm in deleting it. The good news is that creating a new instance is incredibly easy, as you just learned.</br>
For more information on creating your first instance follow https://docs.jetstream-cloud.org/getting-started/first-instance/

# 4. Accessing your Instance

## 4.1. Accessing Instance using the Web Shell
- Navigate to the instance details page.
- Look for the Interactions card and click on the Web Shell button. Alternatively, you can also connect to an instance from the Instance List page:
- The web shell opens a new tab in your browser
- Web Shell is a command line interface (CLI). If you are not comfortable using the command line, use the Web Desktop option

## 4.2. Accessing Instance using the Web Desktop
- The web desktop will not be available if you did not select to enable web desktop during instance creation. If you wish to use the web desktop, please delete this instance and create a new one with it enabled.
- Close the Web Shell tab, return to the Instance Details page in Exosphere again, and open the Desktop interface by clicking the Web Desktop button instead of the Web Shell button.
- The default Linux desktop interface (called Gnome) might look a little different if you are coming from Windows or Mac, but it functions essentially the same.</br>

For more information on accessing your first instance follow https://docs.jetstream-cloud.org/getting-started/access-instance/


# References:
https://docs.jetstream-cloud.org/ui/#when-to-use-exosphere