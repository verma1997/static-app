# Jenkins-JIRA Integration
### Step 1: Install Plugins in Jenkins
To install the plugins, naviagte to  **Manage Jenkins > Manage Plugins** and install the following plugins.<br />
Add Image<br />

### Step 2: Setup the configuration
* Go to **Manage Jenkins > Configure System** and navigate to **JIRA Steps** section to configure **JIRA Sites**.<br /> 
Add image <br />
**NOTE:** Always validate/test your connection after filling details.
* Going down the sections, also configure **JIRA** section and enter the **URL of the JIRA site** and add the **credentials** of your JIRA site.<br />
Add Image<br />
**NOTE:** Always validate/test your connection after filling details.

# Github Webhook configuration to automatically trigger the Jenkins Pipeline

### In Github
#### Step 1: Create a Webhook in Github
* Go to **Settings > Webhooks**.
(Add Image)
* Click on **Add Webhook** and fill the following details.
```
  -> Payload URL: Enter the URL of your Jenkins
  -> Content Type: Select **application/json**
  -> You can trigger the pipeline by selecting **Just the Push Event** option but you can also select various other options by selecting individual events.
```
* Click on **Add Webook** and the webhook is successfully created.

#### In Jenkins
* Click on **New Item**. Enter Name and select **Pipeline** in the items list.
(Add Image)
* In **Build Trigger**, select **GitHub hook trigger for GITScm polling**
(Add Image)

**NOTE:** Don't forget to add **Checkout SCM** stage in your Jenkinsfile. If so, it may cause issue while running the polling
```
stage('Checkout'){
  checkout scm
}
```
