pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'Testing Stage'
      }
    }
    stage('Build') {
      steps {
        echo 'Building Stage'
      }
      post {
        always {
          jiraSendBuildInfo site: 'priyanshuverma.atlassian.net'
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying Stage'
      }
    }
  }
}
