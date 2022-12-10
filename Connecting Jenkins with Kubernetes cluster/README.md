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

To communicate with Kubernetes API do the following:

![kubeconfig secret](https://user-images.githubusercontent.com/58173938/206857061-7b9ce67f-85e7-4470-8747-6757d60f9d2e.jpeg)

select

Kind : Kubernetes Configuration Scope : Global ID : kubernetes-configs ( any meaningful name ) Kubeconfig : copy the content of kubernetes config file and place it at the file /root/kube/config in jenkins host

Then Click on OK!

## ❤ Show your support

Give a ⭐️ if this project helped you, Happy learning!
