<div align=center>
  
  ## How to pull the images from private repository (nexus) to k8s kubeadm cluster

  
![snap](https://user-images.githubusercontent.com/58173938/206860260-36910cc2-d650-4f3d-bf97-da10cc517351.png)

</div>


To pull images from a private Nexus repository to a Kubernetes kubeadm cluster, you will need to do the following:

- Create a Kubernetes secret that contains the credentials for accessing the Nexus repository. This secret will be used by Kubernetes to authenticate with the Nexus repository and pull the required images.

- Use the kubectl command to create the secret in your Kubernetes cluster. For example, if your Nexus repository is hosted at https://nexus.example.com and your username and password are mohan and mohan1, respectively, you could run the following command to create the secret:

```
kubectl create secret docker-registry nexus-creds \
    --docker-server=https://nexus.example.com \
    --docker-username=mohan \
    --docker-password=mohan1
```

- Update your Kubernetes deployment manifest to use the secret when pulling images from the Nexus repository. In your deployment manifest, you will need to add the imagePullSecrets field to the spec section of your deployment, and set its value to the name of the secret you created in step 2.

For example, if your deployment is named `myapp` and the secret is named nexus-creds, you could add the following to your deployment manifest:

```
spec:
  imagePullSecrets:
  - name: nexus-creds

```
- Or you can create the secret in kubernetes cluster with details

```
kubectl create secret docker-registry registry-secret --docker-server=nexus_machine_ip_only:8083 --docker-username=admin --docker-password=admin --docker-email=not-needed@example.com
```

Overall, using a Kubernetes secret to authenticate with a Private Nexus repository allows you to pull images from the repository and use them in your Kubernetes deployments. This can be useful if you want to store and manage your Docker images in a private Nexus repository, rather than using a public registry.

### Nodes are in ready state

![Nodes are in ready state](https://user-images.githubusercontent.com/58173938/206860612-0d0aa022-ed87-4bca-b673-12e79681e406.png)

### Lets pickup anynode IP

![Lets pickup anynode IP](https://user-images.githubusercontent.com/58173938/206861007-0ab2ecb0-95e5-4bc0-835b-03405a3080eb.png)

### Successfully Deployed 

![Successfully Deployed](https://user-images.githubusercontent.com/58173938/206861043-50d9074a-7eb6-4e73-a229-33e2e4be02f5.png)

## ❤ Show your support

Give a ⭐️ if this project helped you, Happy learning!
