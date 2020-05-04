node {
  stage('Stage-1'){
    echo 'Pipelien has been triggered successfully'
  }
  stage('JIRA') {
    withEnv(['JIRA_SITE=JIRA']) {
      def transitions = jiraGetIssueTransitions idOrKey: 'DEM-5'
      echo transitions.data.toString()
    }
  }
  stage('Finish Stage'){
    echo 'Pipeline terminated successfully'
  }
}
