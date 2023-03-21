pipeline {
    agent any
    stages {
        stage('Git-Checkout') {
            steps {
                git url: "https://github.com/balareddy2013/DevOps.git"
            }
        }

        stage(' Maven-Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('SonarScanning') {
            steps {
                withSonarQubeEnv('sonar') {
                    bat 'mvn clean verify sonar:sonar -Dsonar.login=sqp_31ff1edf888fcbb666ebe99075ad7ec47a5b95d6'
                }
            }
        }
                
        stage('Deploy to Tomcat') {
             steps {
                 script {
                // Deploy the .war file to Tomcat using the Tomcat Manager
                     bat 'xcopy "target\\*.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\" /Y'
                }
                 }
             }
        }
    }
