# Deploying Springboot web Application to print "Hello World"
This is a sample Springboot Application, using different devops tools for to develop pipleine intergration !! Ex: Application,git,github,maven,jenkins,docker,dockerhub

## TASK DETAILS: 
1.	Create a small web application to display “Hello World”.
2.	Push this application to a specific folder of the given GitHub repository.
3.	Create a job in Jenkins and make a build this application.
4.	On Every Commit, It has to Build a pipeline with help of Webhook.
5.	If needed Use Pipeline as a Code, for Building the entire pipeline.
6.	Using Jenkins and Docker Plugin, create an Image of the developed web application.
7.	Push the Image Finally to the Docker Hub and send the URL image of the Docker.
8.	Setting up the Prometheus server adding running application url to monitoring.


## Pre-requisite ##
1. Choose Any Cloud Platform (AWS or AZURE or GCP).
2. create a account for the AWS/AZURE/GCP( in my case i'm using the AWS)
3. Create a EC2 instance (ubuntu)
4. Web-Application (i'm Using the spring java Application )

 Flow of the Task
 
![Spring inti](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/09929dfa-b15d-4ba4-a5dc-c2e23fef09e1)



## Steps Invloved:
![Spring inti](https://github.com/mohsuhel/spring-demo/assets/127845338/298219af-a7ba-4b88-9213-2d1eb833021b)



## Step-1: Create and download a Spring Boot web application with Spring initializr.
![1](https://github.com/mohsuhel/spring-demo/assets/127845338/cf3d009f-e0f2-4298-ab5b-55b84c0b0afc)





## Step-2:Click on Generate CTRL. Project zip file will be downloaded.


![2](https://github.com/mohsuhel/spring-demo/assets/127845338/c7810a34-d689-4226-97f1-471cf34b65f5)




## Step-3: Eclipse
1.Extract the zip and import to eclipse(file —> import—-> Maven Proj existing project)
2. create index.html and add the required content to showcase

![3](https://github.com/mohsuhel/spring-demo/assets/127845338/b34ae345-15d2-466f-b082-b6b8ab988677)


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



## Step-6 : Jenkins Setup  and pipeline output
## pipeline script is available in rep0
Note : when you buuilding an image with help of pipeline 
1. Check the jenkins is added to the docker group( sudo usermod -aG docker jenkins)
![6](https://github.com/mohsuhel/Guvi-Geek-Assignment/assets/127845338/ccc81bd3-81b1-4700-b42a-9f6e465a7dfa)

Step-7 : Github Weebhook implementation
## weebok
![2](https://github.com/mohsuhel/spring-demo/assets/127845338/5170ddfb-70e4-4c88-8cb5-e312a847b247)

## configuration
![3](https://github.com/mohsuhel/spring-demo/assets/127845338/bec22b5d-0a90-4b7e-989a-c8e32570008f)

## Step -8 Verfying the output of Application

## successfull pipleine job running 
![4](https://github.com/mohsuhel/spring-demo/assets/127845338/95f78f62-c401-4ec6-abb5-b0bbb22f7e0b)

## verfying 
![1](https://github.com/mohsuhel/spring-demo/assets/127845338/152b527a-6018-475c-95dd-59c80ac57c8f)

# prometheus setup 

follow this steps 
---------------------------------------------
 sudo useradd \
    --system \
    --no-create-home \
    --shell /bin/false prometheus
---------------------------------------------
wget https://github.com/prometheus/prometheus/releases/download/v2.47.1/prometheus-2.47.1.linux-amd64.tar.gz
------------------------------------------------------------------------------------------------------------
tar -xvf prometheus-2.47.1.linux-amd64.tar.gz
------------------------------------------------
sudo mkdir -p /data /etc/prometheus
-------------------------------------------------
cd prometheus-2.47.1.linux-amd64/
---------------------------------------------------
sudo mv prometheus promtool /usr/local/bin/
-------------------------------------------------
sudo mv consoles/ console_libraries/ /etc/prometheus/
--------------------------------------------------------
sudo mv prometheus.yml /etc/prometheus/prometheus.yml
-----------------------------------------------------
sudo chown -R prometheus:prometheus /etc/prometheus/ /data/
-----------------------------------------------------------
prometheus --version
-------------------------------
![5](https://github.com/mohsuhel/spring-demo/assets/127845338/0d317a1b-5efb-45ca-a2fd-03b0e6da8a79)

------------------------------------------------------

<public ip :9090>
----------------------------------------

![6](https://github.com/mohsuhel/spring-demo/assets/127845338/59477916-10c6-4dd8-842c-b14281e7b58f)



# install the node exporter 
------------------------------------
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
--------------------------------------
tar -xvf node_exporter-1.6.1.linux-amd64.tar.gz
---------------------------------------------------
node_exporter --version
--------------------------
![7](https://github.com/mohsuhel/spring-demo/assets/127845338/82b0a236-26fb-4a77-8fe3-4fd4be5dc800)

![8](https://github.com/mohsuhel/spring-demo/assets/127845338/d5ddd0d8-c5a5-416a-ac03-4f285dbcfa04)

# install grafana
----------------------------------------
sudo apt-get install -y apt-transport-https software-properties-common wget
---------------------------------------------------------------------------
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
------------------------------------------------------------------------------------------------------------------
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
-------------------------------------------------------------------------------------------------------------------------------------------
sudo systemctl start grafana-server
-----------------------------------------------
sudo systemctl status grafana-server
--------------------------------------- 

<pubic ip :3000>

![9](https://github.com/mohsuhel/spring-demo/assets/127845338/cdacd711-da98-480a-a514-bec396ded518)

username admin
password admin

![10](https://github.com/mohsuhel/spring-demo/assets/127845338/1e429ad6-4717-4694-b2ce-175ed90bae9b)


# Grafana Dashboard
![11](https://github.com/mohsuhel/spring-demo/assets/127845338/e6147e5f-cb76-434c-801c-73ccb28d7d68)











