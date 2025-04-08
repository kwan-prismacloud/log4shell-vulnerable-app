node {
  stage('SCM') {
    checkout scm
  }
  stage('Build') {
    environment {
          JAVA_HOME = tool 'jdk8'
          scannerHome = tool 'sonarqube' 
      }
    steps {
        sh './gradlew build'
    }
  }
  stage('SonarQube analysis') {
      environment {
          JAVA_HOME = tool 'jdk11'
      }
      withSonarQubeEnv(installationName: 'sonarqube') {
              sh './gradlew sonar'
      }
  }
}
