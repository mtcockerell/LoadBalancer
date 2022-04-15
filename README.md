Nginx Load Balancer NodeJS apps
===============================

This project demonstrates Load Balancing with a Dockerized NGINX instance and Dockerized NodeJS apps. 

## Quickstart

### Prerequisites

You will need Docker and Docker Compose installed for this project.

### Build

You may have to prune your docker network and containers before starting to ensure no deconfliction. 

```bash
git clone https://github.com/mtcockerell/LoadBalancer.git
cd LoadBalancer
cd application 
bash run_script.sh
```
This script will build and run 6 NodeJS apps all being served on 8080. We need to build a NGINX load balancer to manage service of the 6 apps. 
![](/screenshots/1.png)

### NGINX
#### 1. Go to the nginx-docker folder and run the shell script

```bash
cd nginx-docker
bash run_loadbalancer_script.sh

```

#### 2. Launch the browser and in the address bar go to http://localhost:8080
#### 2.1. Refresh the page a few times and notice the app will change based on the load balancing algorithm. 
#### 2.2. Investigate the nginx.conf file, does each app have the same chance of being served by nginx? How would you change this? 


As the output of the original container `dns` shows, a fake DNS record has been successfully written into cache. It can be verified by using dig in the victim's container.

![](/screenshots/2.png)



Two containers are used in this project:\
There is the NodeJS app that we create 6 instances of in our shell script. 
There is our nginx load balancer that serves the apps based on the load balancer algorithm. 

