#!/usr/bin/env groovy

//https://itnext.io/deploy-jenkins-with-dynamic-slaves-in-minikube-8aef5404e9c1

podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'sfdx', image: 'mjmsfdc/sfdx', ttyEnabled: true, command: 'cat'),
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]
  ) {
    node('mypod') {
        stage('ci') {
            container('sfdx') {
                sh 'sfdx --help'
            }
        }
        
        stage('dev') {
            container('sfdx') {
                sh 'sfdx --help'
            }
        }

        stage('test') {
            container('sfdx') {
                sh 'sfdx --help'
            }
        }
    }
}
