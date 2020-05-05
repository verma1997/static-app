node {
  stage('Stage-1'){
    echo 'Pipelien has been triggered successfully'
  }
//   stage('JIRA - Change the Status') {
//     withEnv(['JIRA_SITE=JIRA']) {
//       def transitionInput = [transition: [id: 31]]
//       jiraTransitionIssue idOrKey: 'DEM-5', input: transitionInput
//     }
//   }
//   stage('JIRA - Add comment') {
//     withEnv(['JIRA_SITE=JIRA']) {
//       def comment = [ 
//         body: 'This is a temporary comment.' 
//       ]
//       jiraAddComment idOrKey: 'DEM-5', input: comment
//     }
//   }
  stage('Finish Stage'){
    echo 'Pipeline terminated successfully'
  }
}
