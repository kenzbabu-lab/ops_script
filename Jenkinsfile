pipeline
{
    tools
    {
        maven 'mymaven'
    }
    agent any
    
    stages
    {
        stage('Clone the repo which has ansible playbook')
        {
            steps
            {
                git branch: 'main', url: 'https://github.com/kenzbabu-lab/ops_script.git'
                echo ">>>>>>> Cloned the git repo <<<<<<<<"
            }
        }
        stage('Deploying code using ansible playbook in docker container')
        {
            steps
            {
                echo ">>>>>>> Connecting to ansible host <<<<<<<<"
                ansiblePlaybook credentialsId: 'ansible_key', disableHostKeyChecking: true, installation: 'myansible', inventory: 'ansible.inv', playbook: 'ansible_docker.yml'
            }
        }
        stage('Package the code')
        {
            steps
            {
                echo ">>>>>>> Packing the code to .war file <<<<<<<<"
                git 'https://github.com/kenzbabu-lab/DevOpsCodeDemo.git'
                sh "mvn clean package"
                echo ">>>>>>> Packed the code to .war file <<<<<<<<"
            }
        }
    }
}