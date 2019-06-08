pipeline
 {
    agent any

    stages 
{
      
        stage ('Compile Stage was don done e') 
{

            steps
 {
               
                    sh 'mvn -f pom.xml clean install'
                
            }
        }

        stage ('Testing Stage is also donv  donee')
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
