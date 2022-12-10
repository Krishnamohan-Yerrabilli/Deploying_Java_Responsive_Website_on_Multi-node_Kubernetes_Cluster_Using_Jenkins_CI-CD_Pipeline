<div align=center>
  
  ### Creating Helm hosted repository in Nexus and Pushing the helm charts

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
    
