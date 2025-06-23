
pipeline {
    agent any

    environment {
        TF_VERSION = '1.6.0'
        TF_WORKING_DIR = './terraform'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://your-repo-url.git'
            }
        }

        stage('Install Terraform') {
            steps {
                sh '''
                if ! terraform -version | grep -q $TF_VERSION; then
                    curl -o terraform.zip https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip
                    unzip terraform.zip
                    sudo mv terraform /usr/local/bin/
                fi
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    input message: 'Approve Terraform Apply?'
                    sh 'terraform apply tfplan'
                }
            }
        }
    }

    stage('Terraform Destroy') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    input message: 'Approve Terraform Destroy?'
                    sh 'terraform destroy tfplan'
                }
            }
        }
    }
  
    post {
        always {
            cleanWs()
        }
    }
}
