pipeline
 {
    agent any

    stages 
{
      
        stage ('Compile Stage was done') 
{

            steps
 {
               
                    sh 'mvn -f pom.xml clean install'
                
            }
        }

        stage ('Testing Stage is also done')
 {

            steps
 {
                
                    sh 'mvn -f pom.xml test'
                }
            
        }
        stage('Deploy to Tomcat')
{
        steps
 {
        sh 'cp -R /root/.jenkins/workspace/pipeline1/target* /opt/apache-tomcat-8.0.18/webapps/'
        }
        }


        
    }
}
