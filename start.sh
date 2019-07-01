#!/bin/bash
minikube start -p jenkins --vm-driver=hyperkit
kubectl create -f minikube/jenkins-namespace.yaml
kubectl create -f minikube/jenkins-volume.yaml
helm init --wait
helm install --name jenkins -f helm/jenkins-values.yaml stable/jenkins --namespace jenkins-project
printf $(kubectl get secret --namespace jenkins-project jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
minikube docker-env -p jenkins | grep tcp
