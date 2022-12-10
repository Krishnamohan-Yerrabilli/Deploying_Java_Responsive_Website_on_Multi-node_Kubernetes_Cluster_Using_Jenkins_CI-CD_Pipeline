<div align=center>
  
## Creating Helm hosted repository in Nexus and Pushing the helm charts

![myproject](https://user-images.githubusercontent.com/58173938/206852366-7b75e6b0-4367-4e0a-a903-0fcc0252c06a.png)
  
  </div>

To create a Helm hosted repository in Nexus and push Helm charts to it, we will first need to have Nexus installed and running. 
    
Steps to create new hosted Helm repository:

```
Log in to Nexus and go to the Repositories page.
Click on the "Create repository" button.
Select "helm" as the repository type.
Enter a name for our repository, such as "hosting-helm".
Click on the "Create repository" button to create the repository.
```
    
This would push the "myapp" Helm chart to the "Hosting-helm" Helm repository in Nexus. we can then use this repository to manage and deploy our Helm charts as needed.
    
### Login to nexus

![1 login to nexus](https://user-images.githubusercontent.com/58173938/206852590-6e0ba640-f3f8-451b-b82b-df12cf057382.png)

### Create a new reopsitory

![2 Create a new reopsitory](https://user-images.githubusercontent.com/58173938/206852617-620fbd78-63dc-488e-8d25-7d82df852ffd.png)

### Select hosted repo

![3 select hosted repo](https://user-images.githubusercontent.com/58173938/206852638-ee268d85-4086-49d6-a415-44e03dda8ea3.png)
