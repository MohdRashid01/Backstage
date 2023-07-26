# Backstage

**Instructions on How to Deploy Backstage App in Ubuntu 20.04**

Note :- Please try this step on freshly installed ubuntu O/S and Clone this repo 
```        
7007 is port number for backend 
3000 is port number for frontend 
```
# Installing Docker, Nodejs 18, NPM

Note :- Nodejs 16 or 18 version is only support 
```
1. sudo apt install –y docker.io
2. curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && sudo apt-get install -y nodejs 
3. sudo npm install -g npm@9.8.0
```
# To verify version
```
4. node --version
5. yarn--version 
6. nvm --version 
7. npm version (nvm list, which nvm) 
```
# To setup/install backstage app 
```
8. npx @backstage/create-app@latest 
```
# Go inside the Backstage App
```
9. cd Backstage-app 
```
# Creating a new files inside backstage-app folder
Note :-  all this 3 files can be copied/paste from this same repo inside deploy-app folder 
```
10. nano Dockerfile       (we are using from Multi-stage Build Image) 
11. nano app-config.yaml 
12. nano .dockerignore 
 ```
# Running and creating docker image
```
13. yarn install 
14. yarn build:backend 
15. yarn build-image --tag rashidmd/backstage:1.0.0 
16. docker image build -t rashidmd/backstage:1.0.0 . 
```
# Pusing docker image to Docker Hub 
```
17. docker login
18. docker push rashidmd/backstage:1.0.0 
```
**UNINSTALL NODEJS, NPM**
```
   1. sudo apt-get remove nodejs 
   2. sudo apt-get remove npm 
   3. sudo rm /etc/apt/sources.list.d/nodesource.list  
   4. sudo rm -rf /home/ubuntu/.npm 
   5. sudo apt purge --autoremove nodejs npm
```
# For Installation in Minikube 
```
1. sudo apt install docker.io
2. sudo usermod -aG docker $USER && newgrp docker
3. curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
4. sudo dpkg -i minikube_latest_amd64.deb
5. minikube start
6. kubectl get po -A
7. minikube kubectl -- get po -A
8. alias kubectl="minikube kubectl --"
```
I have tested above all steps it just deploy backstage app in kubernetes cluster whethers its EKS, AKS, GKE.

HERE IS SCREENSHOT
1. ![image](https://github.com/MohdRashid01/Backstage/assets/7812871/fd7c232a-625a-4273-9fa5-2e84128d0da4)


2. ![image](https://github.com/MohdRashid01/Backstage/assets/7812871/9b9397a2-0941-4f8c-8f8c-19a2a18721bb)


