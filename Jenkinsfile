pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git(url: 'https://github.com/RavitejaAdepudi/javawar.git', branch: 'master', credentialsId: 'c0784285-48eb-4815-8024-5f2ae19639f3', poll: true)
      }
    }
  }
}