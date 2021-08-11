docker build . -t default-openshift-image-registry.aisandbox-ddd93d3a0fef01f6b396b69d343df410-0000.us-south.containers.appdomain.cloud/confluentinc/kafka-mirrormaker2:latest13
docker login -u $(oc whoami) -p $(oc whoami -t) default-openshift-image-registry.aisandbox-ddd93d3a0fef01f6b396b69d343df410-0000.us-south.containers.appdomain.cloud
docker push default-openshift-image-registry.aisandbox-ddd93d3a0fef01f6b396b69d343df410-0000.us-south.containers.appdomain.cloud/confluentinc/kafka-mirrormaker2:latest13

