#!/usr/bin/env groovy

//https://itnext.io/deploy-jenkins-with-dynamic-slaves-in-minikube-8aef5404e9c1

podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'sfdx', image: 'mjmsfdx/sfdx', ttyEnabled: true, command: 'cat'),
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]
  ) {
    node('mypod') {
        stage('Check running containers') {
            container('sfdx') {
                bash sfdx --help
            }
        }
        
        stage('Clone repository') {
            container('sfdx') {
                bash sfdx --help
            }
        }

        stage('Maven Build') {
            container('sfdx') {
                bash sfdx --help
            }
        }
    }
}
