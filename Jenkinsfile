pipeline{
    agent any
    stages{
        stage("Make scripts executable"){
            steps{
                sh 'chmod +x ./script/*'
            }
        }
        
        stage("Ansible Setup"){
            steps{
                sh './script/ansible.sh'
            }
        }
        
        

        stage("Deploy Docker Swarm"){
            steps{
                sh './script/docker.sh'
            }
        }
    }
}
