pipeline {
    agent any
    stages {

        stage ('Checkout SCM') {
            steps {
                sh 'ls tooling/'
             }
        }

        stage ('Build Docker Image') {
            steps {
                sh 'docker build tooling/ -t akingo/tooling'
            }
        }

        stage ('Push Image To Registry') {
            steps {
                sh 'docker push akingo/tooling '
            }
        }
             
        

    }
}
