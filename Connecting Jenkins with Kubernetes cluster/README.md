<div align = center>
  
 ## Connecting Jenkins with Kubernetes cluster
  
  ![snap](https://user-images.githubusercontent.com/58173938/206856482-f70cd507-30a4-4e2f-a6c8-64f1973e4eb2.png)

  </div>

To connect Jenkins with a Kubernetes cluster, we will need to do the following:

- Install the Kubernetes plugin for Jenkins. This plugin allows Jenkins to communicate with a Kubernetes cluster and manage the deployment and scaling of applications in the cluster.

- Create a Kubernetes Service Account for Jenkins. This service account will be used by Jenkins to authenticate with the Kubernetes cluster and access its API.

- Configure the Kubernetes plugin in Jenkins to use the service account. In the Jenkins "Manage Jenkins" page, go to the "Configure System" section and find the "Kubernetes" section. Enter the name of the service account and the URL of the Kubernetes API server in the appropriate fields.

- Create a Jenkins pipeline that uses the Kubernetes plugin to deploy and manage applications in the cluster. we can use the Kubernetes plugin to create and manage deployments, pods, and other Kubernetes objects as needed.

Overall, connecting Jenkins with a Kubernetes cluster allows us to automate the deployment and scaling of applications in the cluster, making it easier to manage and maintain the applications in a production environment.

### SSH to kubernetes-controlplane aka (master)

![1 ssh to kubernetes-controlplane aka (master)](https://user-images.githubusercontent.com/58173938/206857975-97ef3270-6522-4f2d-9383-2e3420f04bc2.png)

### Run the kube sh script to install kubernetes setup tools

![2 run the kube sh script to install kubernetes setup tools](https://user-images.githubusercontent.com/58173938/206857995-f3914239-73a0-4822-8ef3-c359938e9652.png)

### Run the second script

![3 run the second script](https://user-images.githubusercontent.com/58173938/206858026-894606cf-18f7-4095-ae7e-5a01640a6065.png)

### Check the version to conform sucessful installation

![4 check the version to conform sucessful installation ](https://user-images.githubusercontent.com/58173938/206858039-155f778e-1417-4a3d-a3a6-cd1419e21706.png)

### Swap mode off

![5 swap mode off](https://user-images.githubusercontent.com/58173938/206858211-d85b6fca-86ac-4be6-b59e-dd44e94c256a.png)


### Enable kernel-module

![6 enable kernel-module](https://user-images.githubusercontent.com/58173938/206858225-b3d31756-f34b-4100-8224-54828a50af3e.png)

### Add sysctl settings to the kube config

![7 add sysctl settings to the kube config](https://user-images.githubusercontent.com/58173938/206858241-84ad3fcc-b2e2-4fda-a265-75a8072c0035.png)

### Reload sysctl

![8 reload sysctl](https://user-images.githubusercontent.com/58173938/206858260-97d87970-c094-4c73-9ed6-61ae45e10cc0.png)

### Install runtime as docker run the script

![9  install runtime as docker run the script](https://user-images.githubusercontent.com/58173938/206858279-8fe8ab4e-3e8a-4800-b568-802f05e98e87.png)

### Create required directories

![10 create required directories](https://user-images.githubusercontent.com/58173938/206858302-57913c41-0cf6-4921-8b9c-05998726eeed.png)

### Create docker daemon json config file

![11 create docker daemon json config file](https://user-images.githubusercontent.com/58173938/206858321-f3840439-bef1-4bfc-8ea7-cb729dbc3540.png)

### Enable dokcer services

![12 enable dokcer services](https://user-images.githubusercontent.com/58173938/206858330-16a553e6-484a-48d3-84f6-3b6d5f464d2f.png)

### Ensure load modules

![13 ensure load modules](https://user-images.githubusercontent.com/58173938/206858345-5fe17102-aa0f-4725-be19-a45a0f6a91c0.png)

### Setup required parameters on sysctl in kubernetes config file

![14 setup required parameters on sysctl in kubernetes config file](https://user-images.githubusercontent.com/58173938/206858355-3f3ac0b5-26c4-41f5-8c9a-c434ea28528b.png)

### Reload the sysctl

![15 reload the sysctl ](https://user-images.githubusercontent.com/58173938/206858380-57dfc9b7-5529-49a4-92e8-01f959fc1093.png)

### Enabling netfileter module to intialize kublet

![16 enabling netfileter module to intialize kublet](https://user-images.githubusercontent.com/58173938/206858409-0bca26af-8981-4dd6-b812-96eeb385afa9.png)

### Intialize kube-adm

![17 intialize kube-adm](https://user-images.githubusercontent.com/58173938/206858430-6ec922b0-92eb-4261-966b-0731d3f21343.png)

Up to here follow the same procedure in the dataplane also (don't need to install kubectl in node) now below stuff only do it on master(control plane)

### Kubeadm-issue resolved

![18 - kubeadm-issue resolved](https://user-images.githubusercontent.com/58173938/206858451-1de03e7f-32cd-4481-87d7-6ea1cef781be.png)

### Copy all the adminconfig files to another location

![19 copy all the adminconfig files to another location](https://user-images.githubusercontent.com/58173938/206858478-f7691dd2-ed64-4a83-b0ee-3e5408f3e59c.png)

### node is added to control plane

![20 node is added to control plane](https://user-images.githubusercontent.com/58173938/206858496-d4dfb6d6-aff3-4c97-8ade-fc5e47e72b90.png)

### Installing calico network plugin

![21 installing calico network plugin](https://user-images.githubusercontent.com/58173938/206858562-c0e59893-501b-4470-8d89-d5c18327a125.png)

### Nodes are in ready state

![22 Nodes are in ready state](https://user-images.githubusercontent.com/58173938/206858576-6b0c6fd7-91f5-45b3-a6e1-1e6cf87a1374.png)

To communicate with Kubernetes API do the following:

![kubeconfig secret](https://user-images.githubusercontent.com/58173938/206857061-7b9ce67f-85e7-4470-8747-6757d60f9d2e.jpeg)

select

Kind : Kubernetes Configuration Scope : Global ID : kubernetes-configs ( any meaningful name ) Kubeconfig : copy the content of kubernetes config file and place it at the file /root/kube/config in jenkins host

Then Click on OK!

## ❤ Show your support

Give a ⭐️ if this project helped you, Happy learning!
