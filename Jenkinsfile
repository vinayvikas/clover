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
            slackSend channel: '#employee',                
                message: "*${currentBuild.currentResult}\n* Job ${env.JOB_NAME}\n build ${env.BUILD_NUMBER} \n More info at: ${env.BUILD_URL}"
        }
    }
}
