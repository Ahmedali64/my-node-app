pipeline{
    agent any

    stages{
        stage('build docker image'){
            steps{
                sh 'docker build -t my-node-app .'
            }
        }
        stage('test'){
            steps{
                sh'echo "no test is needed for now"'
            }
        }
        stage('deploy'){
            steps{
                sh 'docker run -d -p 3000:3000 --name my-node-app-v1 my-node-app'
            }
        }

    }
}
