#/bin/bash


#Deploys Zookeeper
kubectl apply -f cigo-zookeeper-deployment.yaml
sleep 30

#Deploys Kafka
kubectl apply -f cigo-kafka-deployment.yaml
sleep 30

#Deploys SchemaRegistry 
kubectl apply -f cigo-schema-registry-deployment.yaml
sleep 30

kubectl apply -f cigo-kafka-connect-deployment.yaml
sleep 30

kubectl apply -f cigo-elasticsearch-deployment.yaml
sleep 30

kubectl apply -f cigo-kibana-deployment.yaml

kubectl get statefulsets
kubectl get deployments 
kubectl get services 
kubectl get pods
