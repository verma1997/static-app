node {
  stage('Stage-1'){
    echo 'Pipelien has been triggered successfully'
  }
  stage('JIRA - Adding Comment to Issue') {
    withEnv(['JIRA_SITE=JIRA']) {
      def comment = [ 
        body: 'This is a sample comment.' 
      ]
      jiraAddComment idOrKey: 'DEM-2', input: comment
    }
  }
  stage('Finish'){
    echo 'Pipeline terminated successfully'
}
