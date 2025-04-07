node {
  stage('SCM') {
    checkout scm
  }
  stage('Build') {
    tools {
            jdk "jdk8" 
        }
        steps {
            sh './gradlew build'
        }
    }
  stage('SonarQube analysis') {
      tools {
          jdk "jdk8" 
      }
      environment {
          scannerHome = tool 'sonarqube' 
      }
      steps {
          withSonarQubeEnv(installationName: 'SonarQube') {
              sh './gradlew sonar'
          }
      }
  }
}
