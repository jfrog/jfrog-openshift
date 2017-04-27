#######
## Maintained by Shikhar Rawat, JFrog Inc. ##
#######
oc status
oc login -u system:admin
oc projects
oc project myproject
oc login -u developer

oc new-app --docker-image=postgres:9.6 POSTGRES_PASSWORD=password POSTGRES_USER=artifactory POSTGRES_DB=artifactory

oc new-app --name=artifactory-pro --docker-image='jfrog-int-docker-open-docker.bintray.io/artifactory-pro/openshift:5.2.1.pro' DB_TYPE=postgresql DB_HOST=postgres DB_PORT=5432 DB_USER=artifactory DB_PASSWORD=password HA_IS_TRUE=true ART_LICENSES="get one from jfrog.com"

echo "All services should be up and running now"

echo "Exposing artifactory route to outside"
oc expose svc artifactory-pro --port=8081

echo "Artifactory is up and running"
