# Deploying Springboot Application
This is a sample Springboot Application, using different devops tools for to develop pipleine intergration !! Ex: Application,git,github,maven,jenkins,docker,dockerhub

## TASK DETAILS: 
1.	Create a small web application to display “Hello World”.
2.	Push this application to a specific folder of the given GitHub repository.
3.	Create a job in Jenkins and make a build this application.
4.	On Every Commit, It has to Build a pipeline with help of Webhook.
5.	If needed Use Pipeline as a Code, for Building the entire pipeline.
6.	Using Jenkins and Docker Plugin, create an Image of the developed web application.
7.	Push the Image Finally to the Docker Hub and send the URL image of the Docker.


## Pre-requisite ##
1. Choose Any Cloud Platform (AWS or AZURE or GCP).
2. create a account for the AWS/AZURE/GCP( in my case i'm using the AWS)
3. Create a EC2 instance (ubuntu)
4. Web-Application (i'm Using the spring java Application )

 Flow of the Task
 
![Spring inti](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/09929dfa-b15d-4ba4-a5dc-c2e23fef09e1)



## Steps Invloved:


## Step-1: Create and download a Spring Boot web application with Spring initializr.


![1](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/9921ffec-c16a-4291-ba2e-4ce1d8a94c65)


## Step-2:Click on Generate CTRL. Project zip file will be downloaded.

![2](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/facc7cf1-55f9-4f84-8633-7546d00c559e)



## Step-3: Eclipse
1.Extract the zip and import to eclipse(file —> import—-> Maven Proj existing project)
2. create index.html and add the required content to showcase

![3](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/a57cf290-1e95-4507-8339-ee52b163558f)

Step-4 :
 1. Login into the Aws Console
 2. Create a ubuntu Ec2 Instance with required security group's(Ex:http, ssh, htttps)
 3. Connect the instance

![edited-2](https://github.com/mohsuhel/Spring-boot-Project/assets/127845338/c2562bdf-4eb9-46c7-8fa6-8f0c27cc0db5)



## Step-5 Installations 
1.Java(Env)
2.Maven(Buidling the Application)
3. Jenkins ( CI/CD)
4. Git
4. Docker( Building image, Containerizing ,pushing to dockerhub)

Here, Im writing the Shell script where i can install the above installation at one time
### Script will available in Repo### 
Note : Give the Execution premission to the script (chmod +x filename.sh)

![5](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/67c09705-f120-465a-991d-9db0bce485d7)



Step-6 : Jenkins Setup  and pipeline output
## pipeline script is available in rep0
Note : when you buuilding an image with help of pipeline 
1. Check the jenkins is added to the docker group( sudo usermod -aG docker jenkins)
![6](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/ccc81bd3-81b1-4700-b42a-9f6e465a7dfa)




## Step -8 Verfying the output of Application

![1](https://github.com/mohsuhel/spring-demo/assets/127845338/152b527a-6018-475c-95dd-59c80ac57c8f)







