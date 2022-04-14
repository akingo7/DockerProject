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

        
        stage ('Create Container From Image') {
            steps {
                sh 'docker run --name=tooling -itd --rm -p 80:80 akingo/tooling'
            }
        }
        
        
        stage ('Check Container') {
            steps {
                sh 'curl -I localhost:80 | echo grep 200'
            }
        }
        
        stage ('Push Image To Registry') {
            steps {
                when {
                     triggeredBy 'echo $? == 0'
                    }
                sh 'docker push akingo/tooling '
            }
        }
        
        stage('Delete container') {
            steps{
                sh 'docker container rm -f tooling'
            }
        }
        

    }
}
