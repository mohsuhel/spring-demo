node
{
    
    stage("cloning the repositry")
    {
        echo "cloning the git repo started "
        git 'https://github.com/mohsuhel/Guvi-Geek-Assignment.git'
        echo "cloning done successfully"
    }
    
    stage("Building stage")
    {
        
        echo "building the war package is started"
        sh 'mvn clean package'
        echo "building is done successfully"
    }
     
    stage("testing the application")
    {
        echo " run test script"
    }
    
    stage("image building and containerizing ")
    {
      sh 'docker build -t mdsuh/spirngdemo .'        
    }
    
    stage("Release and push dockerhub"){
        withCredentials([string(credentialsId: 'dockerHub', variable: 'dockerHub')]) {
    sh 'docker login -u mdsuh -p $dockerHub'
    sh 'docker push mdsuh/springdemo'
} 
    }
    
     stage("exposing outside  ")
    {
        echo "Exposing Application the outside "
        sh 'docker run -itd -p 8081:8081 mdsuh/springdemo'
    
    }
}
