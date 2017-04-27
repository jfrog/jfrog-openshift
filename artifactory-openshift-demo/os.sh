#######
## Maintained by Shikhar Rawat, JFrog Inc. ##
#######
#! /bin/bash
oc cluster up --version=v3.4
oc login -u system:admin
oc adm policy add-cluster-role-to-user cluster-admin developer
oc adm policy add-scc-to-user anyuid developer
oc adm policy add-scc-to-user privileged developer
oc adm policy add-scc-to-user privileged system:serviceaccount:myproject:default
oc adm policy add-scc-to-group anyuid system:authenticated

oc login -u developer
oc project default
oc adm policy add-role-to-user admin developer -n default
oc adm policy add-role-to-user system:image-puller developer
oc adm policy add-role-to-user system:image-builder developer
oc adm policy add-role-to-user system:deployer developer
