# Synopsis:

These scripts will help you set up a local Openshift cluster using **'oc cluster up'**. This is a single node cluster for dev purposes and doesnt have any persisitent volumes. **Please do not use this setup for any production use cases.**

# Script Examples:

Run the two scripts inside in the order mentioned below and the first script will set up an openshift cluster locally as a docker container on your local machine. The other script will install Postgres and Artifactory on Openshift.

# Pre-Reqs:

*   Please download the Openshift CLI from [here](https://github.com/openshift/origin/releases/tag/v1.4.1) and put the binary into your bin folder (usually /usr/local/bin).
*   Docker version 1.13.1(15353) is required to run these scripts. Please use this specific version as there are known issues with other docker versions.
    *   You can download this version [here](https://download.docker.com/mac/stable/1.13.1.15353/Docker.dmg) *This is an old release of Docker.*
*   socat is another dependency which is required to run these scripts.
    *   Download the package from [here](http://www.dest-unreach.org/socat/).
    *   For mac users: `brew install socat`.
*   Run the os.sh script and then run the install-art.sh script.

# Final Steps :

*   Once Openshift and Artifactory are setup, open [this](https://127.0.0.1:8443/console) link to access the web console.
    *   default username: **developer**
    *   default password: **developer**
*   After you login, select the project **myproject** from the projects list.
*   Inside **myproject** overview you will see two containers running, one for Postgres and one for Artifactory.
*   There will be a route exposed for artifactory, something like *http://artifactory-pro-myproject.1.2.3.4.xip.io*. Here 1.2.3.4 is your IP.
*   Edit your **/etc/hosts** file to add an entry for this route.
    *   The entry should look like: `1.2.3.4	  artifactory-pro-myproject.1.2.3.4.xip.io`  _**Be very careful while editing this file**_
    *   Once the entry has been added in the **/etc/hosts** file the route will take you to the Artifactory instance running inside Openshift.

**These scripts were written on OS X. They have not been tested on other environments.**
