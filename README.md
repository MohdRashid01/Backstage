# Backstage

**Instructions on How to Deploy Backstage App in Ubuntu 20.04**

Note :- Please try this step on freshly installed ubuntu O/S

7007 is port number for backend 
3000 is port number for frontend 

# Installing Docker, Nodejs 18, NPM
Note :- Nodejs 16 or 18 version is only support 

sudo apt install –y docker.io 
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && sudo apt-get install -y nodejs 
sudo npm install -g npm@9.8.0 

# To verify version's
node –version 
yarn –version 
nvm --version 
npm version (nvm list, which nvm) 

# To setup/install backstage app 
npx @backstage/create-app@latest 

# Go inside the Backstage App
cd Backstage-app 

# Creating a new files inside backstage-app folder this files should be root directory
Note :-  all this 3 files can be copied/paste from this same repo inside deploy-app folder 
nano Dockerfile       (we are using from Multi-stage Build Image) 
nano app-config.yaml 
nano .dockerignore 
 
# Running and creating docker image
yarn install 
yarn build:backend 
yarn build-image --tag rashidmd/backstage:1.0.0 
docker image build -t rashidmd/backstage:1.0.0 . 

# Pusing docker image to Docker Hub 
docker login
docker push rashidmd/backstage:1.0.0 

**UNINSTALL NODEJS, NPM**
    sudo apt-get remove nodejs 
    sudo apt-get remove npm 
    sudo rm /etc/apt/sources.list.d/nodesource.list  
    sudo rm -rf /home/ubuntu/.npm 
    sudo apt purge --autoremove nodejs npm 
