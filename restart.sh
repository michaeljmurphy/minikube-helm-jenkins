#!/bin/bash
minikube stop -p jenkins
minikube delete -p jenkins
minikube start -p jenkins --vm-driver=hyperkit
kubectl create -f minikube/jenkins-namespace.yaml
kubectl create -f minikube/jenkins-volume.yaml
helm init --wait
helm install --name jenkins -f helm/jenkins-values.yaml stable/jenkins --namespace jenkins-project
