pipeline {
    agent any

    stages {
        stage ("Checkout") {
            steps {
              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/atish7999/demo.git']])
            }
        }
        stage ("Terraform init") {
            steps {
                sh ("terraform init -reconfigure")
            }
        }
        stage ("Terraform formate") {
            steps {
                sh ("terraform fmt")
            }
        }
        stage ("Terraform validate") {
            steps {
                sh ("terraform validate")
            }
        }
        stage ("Terraform plan") {
            steps {
                sh ("terraform plan -lock=false")
            }
        }
        stage ("Terraform apply") {
            steps {
                sh ('terraform ${action} --auto-approve -lock=false') 
            }
        }
    }
}
