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
                    bat 'mvn clean verify sonar:sonar -Dsonar.login=sqp_347eeea2358aeddf3f527967fffdd6127aad07ea'
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
