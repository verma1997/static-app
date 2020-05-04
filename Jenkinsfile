node {
  stage('Stage-1'){
    echo 'Pipelien has been triggered successfully'
  }
  
  stage('Get Current Transition State'){
    def transitions = jiraGetIssueTransitions idOrKey: 'DEM-5', site: 'JIRA'
    echo transitions.data.toString()
  }
  
  stage('Finish'){
    echo 'Pipeline terminated successfully'
  }
}
