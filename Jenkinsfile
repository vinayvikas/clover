pipeline
{
    agent any 
    
    stages
    {
     
     stage ('compile code')
     {
         steps
         {
             sh 'mvn clean install'
         }
     }
     stage ('test')
     {
         steps
         {
             sh 'mvn test'
         }
     }
     stage ('find my binary')
     {
         steps
         {
             sh 'find / -name *.war'
         }
     }
     stage ('deploy')
     {
         steps
         {
             sh 'cp -R /root/.jenkins/workspace/vikas/target/* /opt/apache-tomcat-8.5.3/webapps'
         }
     }
  
        stage('Slack it'){
            steps {
                slackSend channel: '#employee', 
                          message: 'Hello, world'
            }
        } 
    }
     post {
        always {
            echo 'I will always say hello in the console.'
            slackSend channel: '#employee',
                color: COLOR_MAP[currentBuild.currentResult],
                message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} by ${BUILD_USER}\n More info at: ${env.BUILD_URL}"
        }
    }
}
