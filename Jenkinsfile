pipeline
 {
    agent any

    stages 
{
      
        stage ('Compile Stage') 
{

            steps
 {
               
                    sh 'mvn -f pom.xml clean install'
                
            }
        }

        stage ('Testing Stage')
 {

            steps
 {
                
                    sh 'mvn -f pom.xml tesbvgbgt'
                }
            
        }
        stage('Deploy to Tomcat')
{
        steps
 {
        sh 'cp -R /root/.jenkins/workspace/pipe/target* /opt/apache-tomcat-8.5.3/webapps/'
        }
        }


        
    }
}
