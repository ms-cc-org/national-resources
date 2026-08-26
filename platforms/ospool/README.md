# OSPool
Open Science Pool. The OSPool provides its users with fair-share access to compute and storage capacity contributed by university campuses, and government-supported supercomputing institutions.


# Prerequisites
- Submit an application through https://portal.osg-htc.org/application
- Once the application is submitted the OSPool facilitator will reach out to you.
- Once you fill up the necessary forms, you will be provided with 'username' and 'accesspoint'. AccessPoints would end with `uw.osg-htc.org`. For Eg; `ap40.uw.osg-htc.org, ap41.uw.osg-htc.org,  ap43.uw.osg-htc.org`

# Login 
There are two ways to login to the uw.osg-htc.org Access Points. In this, we will use the easiest method, browser-based web authentication to login. To view other methods of login, follow [OSG Documentation](https://portal.osg-htc.org/documentation/overview/account_setup/comanage-access/#log-in-to-uwosg-htcorg-access-points)

## Browser-based web authentication

- Open a terminal and enter the following command, being sure to replace `username` with your `uw.osg-htc.org` username:</br>

`ssh username@ap4#.uw.osg-htc.org`
- Upon hitting enter, the following text should appear with a unique URL, similar to the one in the example below:
```
Authenticate at
   -----------------
   https://cilogon.org/device/?user_code=FF4-ZX6-9LK
   -----------------
   Type 'Enter' when you authenticate.
```
- Open your unique `https://cilogon.org` link in your web browser. When using some terminal applications, you may be able to click on the link to open it. Otherwise, copy the link and paste it into a web browser, and hit enter.
- You will be redirected to a new page where you will be prompted to login using your institutional credentials. Once you have done so, a new page will appear with the following text: `"You have successfully approved the user code. Please return to your device for further instructions."`
- Return to your terminal, and press the 'Enter' key to complete the login process.
- If you encounter any issues while logging in, follow [Known Issues](https://portal.osg-htc.org/documentation/overview/account_setup/comanage-access/#known-issues) on OSPool.

# Reference:
- https://portal.osg-htc.org/documentation/overview/account_setup/comanage-access/
