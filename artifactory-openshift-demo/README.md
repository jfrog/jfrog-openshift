# Synopsis:

These scripts will help you set up a local Openshift cluster using 'oc cluster up'. This is a single node cluster for dev purposes and doesnt have any persisitent volumes. Please don't use this installation for any dev purposes. 

# Code Example:

Run the two scripts inside and these scripts will set up an openshift cluster locally as a docker container on your local machine. The other script will install Postgres and Artifactory on Openshift.

# Installation:

*       Please download the Openshift CLI from [here](https://docs.openshift.com/container-platform/3.5/cli_reference/get_started_cli.html#installing-the-cli) and put it into your bin (usually /usr/local/bin) folder.
*	Docker version 1.13.1(15353) is required to run the scripts. Please use this specific version as there are known issues with other versions.
*	socat is another dependency which is required to run these scripts.
	*	Download the binary from [here](http://www.dest-unreach.org/socat/)
	*	For Mac users: `brew install socat`
*	Run the os.sh script and then run the installartonoc.sh script.

**These scripts were written on OS X. They have not been tested on other envirnments.**
