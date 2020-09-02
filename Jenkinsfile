pipeline{
    agent any
    stages{
        stage("Make scripts executable"){
            steps{
                sh 'chmod +x ./sfia2-project/script/*'
            }
        }
        
        stage("Ansible Setup"){
            steps{
                sh 'bash ./sfia2-project/script/before-installation.sh'
                sh './sfia2-project/script/ansible.sh'
            }
        }
        
        stage("configure jenkins"){
            steps{
                sh './sfia2-project/script/jenkins.sh'
            }
        }
        

        stage("Deploy Docker Swarm"){
            steps{
                sh './sfia2-project/script/docker.sh'
            }
        }
    }
}
