pipeline {
    agent any
    stages {

        stage ('Checkout SCM) {
            steps {
                sh 'ls'
             }
        }

        stage () {
            steps {
                sh 'docker build ./tooling/ -t akingo/tooling'
            }
        }

    }
}
