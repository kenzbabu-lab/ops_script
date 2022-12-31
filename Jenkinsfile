pipeline
{
    tools
    {
        maven 'mymaven'
    }
    agent
    {
        label 'linux_node'
    }
    stages
    {
        stage('Clone the repo')
        {
            steps
            {
                git 'https://github.com/kenzbabu-lab/DevOpsCodeDemo.git'
                echo "Cloned the git repo"
            }
        }
        stage('Package the code')
        {
            steps
            {
                sh "mvn clean package"
                echo "Packing the code to .war file"
            }
        }
    }
}