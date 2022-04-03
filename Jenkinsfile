pipeline
{
agent any
stages
{
stage ('polling code from script')
{
steps
{
git url:'https://github.com/RavitejaAdepudi/javawar'
}
}
stage ('build')
{
steps
{
sh 'mvn install'
}
}
stage ('deploy')
{
steps
{
sh 'cp -R /root/.jenkins/workspace/pipeline/target/* /opt/apache-tomcat-8.5.3/webapps'
}
}
}
}
