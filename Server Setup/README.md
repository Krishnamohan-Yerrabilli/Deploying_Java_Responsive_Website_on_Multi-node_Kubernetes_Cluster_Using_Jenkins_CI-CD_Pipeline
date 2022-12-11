
![My project](https://user-images.githubusercontent.com/58173938/206922358-125e5619-3735-4e19-bb23-8c33907cb8d2.png)

### Jenkins Installation

Create a GCP VM using the Google Cloud Console, the gcloud command-line tool,
or any other method you prefer. Make sure to choose Ubuntu 18.04 as the operating system.

SSH into the VM using the gcloud command-line tool or another SSH client.

Install the Jenkins package from the Ubuntu repository:
```
sudo apt update
sudo apt install jenkins
```

Start the Jenkins service:
```
sudo systemctl start jenkins
```

Enable the Jenkins service to start on boot:
```
sudo systemctl enable jenkins
```
Check the status of the Jenkins service to make sure it's running:
```
sudo systemctl status jenkins
```
Open a web browser and go to http://<vm-ip-address>:8080 to access the Jenkins dashboard, where <vm-ip-address> is the public IP address of your GCP VM.

Follow the instructions on the screen to complete the initial setup. This will involve setting up an administrative user and selecting the plugins you want to install.

### SonarQube Installation 

Install the Oracle Java 8 Development Kit (JDK) by running the following commands:

```
sudo apt update
sudo apt install openjdk-8-jdk
```
Install the PostgreSQL database server by running the following commands:
```
sudo apt update
sudo apt install postgresql postgresql-contrib
```
Create a new database and user for SonarQube by running the following commands:

```
sudo -u postgres psql
CREATE DATABASE sonarqube;
CREATE USER sonarqube WITH ENCRYPTED PASSWORD '<password>';
GRANT ALL PRIVILEGES ON DATABASE sonarqube TO sonarqube;
```

Make sure to replace <password> with a strong password of your choice.

Download the SonarQube installation package by running the following command:
```
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.4.zip
```

Unzip the downloaded file:
```
unzip sonarqube-7.9.4.zip
```  
Move the unzipped directory to /opt:
```
sudo mv sonarqube-7.9.4 /opt/sonarqube
```
Add the sonarqube user and group:
```
sudo adduser --system --no-create-home --group sonarqube
```
Change the ownership of the SonarQube installation directory to the sonarqube user and group:

```
sudo chown -R sonarqube:sonarqube /opt/sonarqube
```
Create a new Systemd service unit file for SonarQube by running the following commands:

```
sudo nano /etc/systemd/system/sonarqube.service
```
Paste the following content into the file, making sure to replace <password> with the password you chose in step 5:

```
[Unit]  
Description=SonarQube service
After=syslog.target network.target

[Service]
Type=forking

ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop

User=sonarqube
Group=sonarqube
Restart=always

[Install]
WantedBy=multi-user.target
```

Save and close the file.

Reload the Systemd daemon to pick up the new service unit file:

```
sudo systemctl daemon-reload
```
Start the SonarQube service and enable it to start on boot:
  
```
sudo systemctl start sonarqube
sudo systemctl enable sonarqube
```
  
Check the status of the SonarQube service to make sure it's running:  
``` 
sudo systemctl status sonarqube
```
  
Open a web browser and go to http://<vm-ip-address>:9000 to access the SonarQube dashboard, where `<vm-ip-address>` is the public IP address of your GCP VM.
  
### Nexus Installation 
  
Install the Oracle Java 8 Development Kit (JDK) by running the following commands:

```
sudo apt update
sudo apt install openjdk-8-jdk
```
Download the Nexus installation package by running the following command:
```
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
```
Unzip the downloaded file:
```
tar xzvf latest-unix.tar.gz
```
Move the unzipped directory to /opt:
```
sudo mv nexus-3* /opt/nexus
```
Add the nexus user and group:
```
sudo adduser --system --no-create-home --group nexus
```
Change the ownership of the Nexus installation directory to the nexus user and group:
```
sudo chown -R nexus:nexus /opt/nexus
```
Create a new Systemd service unit file for Nexus by running the following commands:
```
sudo nano /etc/systemd/system/nexus.service
```
Paste the following content into the file:
```
[Unit]
Description=Nexus service
After=syslog.target network.target

[Service]
Type=forking

ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop

User=nexus
Group=nexus
Restart=always

[Install]
WantedBy=multi-user.target
```

Save and close the file.

Reload the Systemd daemon to pick up the new service unit file:

```
sudo systemctl daemon-reload
```

Start the Nexus service and enable it to start on boot:
```
sudo systemctl start nexus
sudo systemctl enable nexus
```

Check the status of the Nexus service to make sure it's running:
```
sudo systemctl status nexus
```
Open a web browser and go to http://<vm-ip-address>:8081 to access the Nexus dashboard, where <vm-ip-address> is the public IP address of your GCP VM.
  
### Kubeadm Installation
  
Install the required packages by running the following command:

```
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
```

Add the Kubernetes signing key by running the following command:

```
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
```

Add the Kubernetes package repository by running the following command:

```
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
```

Install the kubeadm package by running the following command:

```
sudo apt-get update
sudo apt-get install -y kubeadm
```

Initialize the Kubernetes cluster by running the kubeadm command. The specific command and options you use will depend on the type of Kubernetes cluster you want to create. Here's an example that creates a single-node cluster with a Flannel network:

```
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
```
After the kubeadm command completes, it will display a kubeconfig file and a join command that you can use to add other nodes to the cluster. Make sure to save these for future reference.
  
### Helm Installation
  
  
Install the curl and gnupg packages by running the following command:

```
sudo apt-get update && sudo apt-get install -y curl gnupg
```

Add the Helm signing key by running the following command:

```
curl https://helm.baltorepo.com/organization/signing.asc | sudo apt-key add -
```

Add the Helm package repository by running the following command:

```
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
```

Install the helm package by running the following command:

```
sudo apt-get update
sudo apt-get install -y helm
```

Initialize the Helm package manager by running the following command:

```
helm init
```
  
### Docker installation
  
  
Update your system's package index and install any available package updates by running the following commands:

```
sudo apt update
sudo apt upgrade
```

Install the Docker engine by running the following command:

```
sudo apt install docker.io
```

Start the Docker service by running the following command:

```
sudo systemctl start docker
```

Verify that the Docker service is running by checking its status using the following command:

```
sudo systemctl status docker
```

You should see a message indicating that the Docker service is active and running.

If you want to be able to run Docker commands without using sudo, add your user to the docker group by running the following command:

```
sudo usermod -aG docker $USER
```

You will need to log out and log back in for this change to take effect.

```
docker --version
```
