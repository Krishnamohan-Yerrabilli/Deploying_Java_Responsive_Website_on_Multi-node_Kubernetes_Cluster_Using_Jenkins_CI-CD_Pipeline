<div align="center">

## Deployment on Kubernetes Cluster using Jenkins CI/CD Project

![MY-PROJECT](https://user-images.githubusercontent.com/58173938/206105042-1ffb6be9-8ed0-4d86-8bb0-bba1415f45ee.png)

### Whole Project Code Available [Here](https://github.com/Krishnamohan-Yerrabilli/Java_Gradle_Responsive_Website)

### This Repo is to Teach You Each Technology/Tool and How to Implement the Whole Project Step by Step 

</div> 

## Prerequisites/tools needed to work on this project. 

- [Java Springboot](https://spring.io/guides/gs/spring-boot/) 
- [Responsive Web Design](https://scrimba.com/learn/responsive)
- [Jenkins](https://blog.kubesimplify.com/introduction-to-jenkins)
- [Groovy](https://www.jenkins.io/doc/book/pipeline/getting-started/)
- [Gradle](https://www.vogella.com/tutorials/GradleTutorial/article.html)
- [SonarQube](https://vegastack.com/blog/why-sonarqube-an-introduction-to-sonarqube-and-its-benefits/) 
- [Nexus](https://blog.sonatype.com/how-to-get-started-with-nexus-repository-manager-oss)
- [Helm](https://youtu.be/5_J7RWLLVeQ) 
- [Datree](https://youtu.be/aqiOyXPPadk)
- [Docker](https://youtu.be/17Bl31rlnRM)
- [Kubernetes](https://github.com/Krishnamohan-Yerrabilli/Kubernetes-hands-on) 

## Agenda

> We will automate the whole operation using Jenkins.

- Creating a site using the `Spring framework`, for the further process we make use of `SonarQube` for `StaticCode Analysis` for checking our source repo,  later we make use of the `SonarQube quality gate` check status, if we get a positive result then we will be ok, if it doesn't go well, we will stop there.
 
- Which in turn performs some checks against sonar rules 

```
	`Task :compileJava UP-TO-DATE`
	`Task :processResources UP-TO-DATE`
	`Task :classes UP-TO-DATE`
	` Task :compileTestJava UP-TO-DATE`
	` Task :sonarqube`
```

- Later we build the application using Gradle, which is a build automation tool after We make use of a multi-stage dockerfile.

```
FROM openjdk:11 as base 
WORKDIR /app
COPY . . 
RUN chmod +x gradlew
RUN ./gradlew build 

FROM tomcat:9
WORKDIR webapps
COPY --from=base /app/build/libs/Responsive_website-0.0.1-SNAPSHOT.war .
RUN rm -rf ROOT && mv Responsive_website-0.0.1-SNAPSHOT.war ROOT.war  

```

- The resulting image will be tagged and pushed to the nexus registry which is indeed private, our whole application and its related dependencies will not be exposed to the outside world.

- Kubernetes uses a data serialization lang called YAML,we make use of Helm which is a package manager for Kubernetes 

- To validate the YAML files we will use Datree which is a tool to find misconfigurations among YAML files, we can change the default configurations and also we can create new rules over datree.io 

- We're using kubeadm to set up a multi-node Kubernetes cluster, and join the other node(data plane) via kubejoin, here the deployment takes place through the helm.

## Project is divided into 6 parts

- [Server Setup]()
- [Integrating SonarQube with Jenkins]()
- [Creating Docker hosted repository in Nexus and pushing the docker image through Jenkins]()
- [Creating Helm hosted repository in Nexus and Pushing the helm charts]()
- [Configuring mail server in Jenkins]()
- [How to pull the images from private repository ( nexus ) to k8s kubeadm cluster]()
- [connecting Jenkins with Kubernetes cluster]()
- [Configuring PR-based trigger in Jenkins]()

## ❤ Show your support

Give a ⭐️ if this project helped you, Happy learning!
