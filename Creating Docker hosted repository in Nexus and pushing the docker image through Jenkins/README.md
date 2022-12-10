<div align=center>
  
  ## Creating Docker hosted repository in Nexus and pushing the docker image through Jenkins
  
  ![myproject](https://user-images.githubusercontent.com/58173938/206851411-ea744639-53fd-42ca-af97-8bf0869fb361.png)
  
  </div>
  
  A hosted repository through Jenkins on a Nexus private registry is a way to manage and store Docker images for use in a Jenkins build pipeline. A Nexus private registry is a place where we can store and manage our Docker images, so that they are accessible to our Jenkins build pipeline. we can then configure Jenkins to push built Docker images to our Nexus registry, and to pull them from the registry as needed during the build process.

To set up a hosted repository through Jenkins on a Nexus private registry, we will first need to set up the Nexus registry and configure it to work with Jenkins. Once this is done, we can create a Jenkins pipeline that uses Docker to build and test our software. The pipeline can be configured to push the built Docker images to our Nexus registry, and to pull any required images from the registry as part of the build process.

Overall, using a hosted repository through Jenkins on a Nexus private registry can help streamline our software development and deployment process, by making it easier to manage and deploy Docker images.

### Generate secret pass to hide the nexus password

![1 Generate secret pass to hide the nexus password](https://user-images.githubusercontent.com/58173938/206851465-e087134a-260f-4458-a6a6-adef9d143706.png)
