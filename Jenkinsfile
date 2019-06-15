pipeline
{
    agent any 
    
    stages
    {
     
     stage ('compiloing gfagqfq a jon')
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
     stage ('find my war file')
     {
         steps
         {
             sh 'find / -name swathi.war'
         }
     }
     stage ('deploy')
     {
         steps
         {
             sh 'cp -R /root/.jenkins/workspace/pipeline1/target/* /opt/apache-tomcat-8.5.3/webapps'
         }
     }
        
    }
}
