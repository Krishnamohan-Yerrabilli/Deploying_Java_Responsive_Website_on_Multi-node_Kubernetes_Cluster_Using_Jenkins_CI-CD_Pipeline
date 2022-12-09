![Cloud Native Landscape pdf (1)](https://user-images.githubusercontent.com/58173938/206695665-83f9aac5-bcd2-462f-91a3-f1d30edab108.jpg)

Jenkins is an open-source automation tool written in Java with many built-in plugins for continuous integration (CI)/continuous deployment (CD) purposes. It is primarily used to automate tasks related to efficiently building, testing, deploying and maintaining your project. You can integrate Jenkins with version control tools like GitLab, Bitbucket, Github where you can automatically build, test and deploy your code whenever you commit it.

### Login to jenkins, if you dont know the password, default password location is 

```
/var/lib/jenkins/secrets/initialAdminPassword 
```

### After you logged in click on suggested plugins

![1 After you logged in click on suggested plugins](https://user-images.githubusercontent.com/58173938/206697444-61c32dbc-5bf2-4538-b625-a02b312a0756.png)

### Plugins installation processing

 ![2 plugins installation processing](https://user-images.githubusercontent.com/58173938/206697549-f9d1b36b-9565-4f7f-bfaa-6c2b2a5f99cb.png)

### Make a new password and leave the instance configuration

![3 make a new password and leave the instance configuration](https://user-images.githubusercontent.com/58173938/206697656-dffc1301-154a-4e00-8f09-3860176fb6a9.png)

### Start using jenkins

![4 start using jenkins](https://user-images.githubusercontent.com/58173938/206698509-c5c57e76-9b85-4ca3-8aaa-14ce8bf75f1b.png)

### SSH to the server

![5 ssh to the server](https://user-images.githubusercontent.com/58173938/206698625-72be29c0-eb65-46b7-92f7-f47d67b37966.png)

### Installing helm

![6 installing helm](https://user-images.githubusercontent.com/58173938/206698735-b0f88b81-afe9-4e80-9c5a-263fa707575b.png)

### Install docker

![7 install docker](https://user-images.githubusercontent.com/58173938/206698944-c0c688c1-7998-43e8-9e7a-b730a8711de4.png)

### Install unzip for proper working of datree plugins

![8 install unzip for proper working of datree plugins](https://user-images.githubusercontent.com/58173938/206699066-8321d82a-e7c1-4f6e-bc41-cbdd5f9d82d8.png)

### Go to datree docs

![9 Go to datree docs](https://user-images.githubusercontent.com/58173938/206699144-c8f72ef3-0827-4113-bb66-2061e5f18329.png)

### Click on integrations, then click on helm plugin

![10 Click on integrations, then click on helm plugin](https://user-images.githubusercontent.com/58173938/206699250-9086dc1f-56e5-46f5-adb4-1fe86c69a80d.png)

### Copy helm plugin installation command

![11 copy helm plugin installation command](https://user-images.githubusercontent.com/58173938/206699309-3553d71c-c93e-45ef-9975-529060d38dc9.png)

### Paste it on jenkins instance to install

![12 paste it on jenkins instance to install](https://user-images.githubusercontent.com/58173938/206699415-2e3b01b8-5eca-4bad-a456-f6671166f9db.png)

### Click on new item to create a new pipeline

![13 click on new item to create a new pipeline](https://user-images.githubusercontent.com/58173938/206699476-c3372766-e1e6-4765-bf37-c71d413b0142.png)

### Enter the project name you created

![14 Enter the project name you created](https://user-images.githubusercontent.com/58173938/206699553-1eae26c1-33f8-4243-a09d-6cf6134f3725.png)

### Select on pipeline and click on ok

![15 Select on pipeline and click on ok](https://user-images.githubusercontent.com/58173938/206699663-b820020b-3770-44c2-99ff-3a6e0ae5b8e4.png)

### Select Pipeline script from SCM

![16 Select Pipeline script from SCM](https://user-images.githubusercontent.com/58173938/206699791-13ec6f19-c09d-4416-ab10-1f845f886ce9.png)

### Select SCM as git

![17 Select SCM as git](https://user-images.githubusercontent.com/58173938/206699909-b1a07829-5c9b-4e4a-9eee-e16a7b9f6d01.png)

### Copy your repo url

![18 copy you repo url](https://user-images.githubusercontent.com/58173938/206700008-928e3665-1fd6-4fad-bddf-de962139b1fb.png)

### Paste here

![19 paste here](https://user-images.githubusercontent.com/58173938/206700129-0ad1aa2c-4413-4e32-b5b5-1d6c0aeb2327.png)

### Add the branch on which you create commit based job

![20 add the branch on which you create commit based job](https://user-images.githubusercontent.com/58173938/206700234-df2d4a61-40ba-42fd-96d3-78f42d46aed2.png)

### Click on save

![21 click on save](https://user-images.githubusercontent.com/58173938/206700339-203c7934-af0a-4579-86c4-9e6523f1cb33.png)

### Create a new SSH Key

![22 Create a new SSH Key](https://user-images.githubusercontent.com/58173938/206700480-6a9441a5-474a-43e8-b1e5-f63853b79bfa.png)

### Go to Git settings

![23 Go to Git settings](https://user-images.githubusercontent.com/58173938/206700533-d88619b2-40c5-4210-b5b8-197b244998d6.png)

### Add the generated SSH Key

![24 Add the generated SSH Key](https://user-images.githubusercontent.com/58173938/206700638-b80a069e-b628-4a0b-ba65-f122be4af6b4.png)

### Give the title and Add the key

![25 Give the title and Add the key](https://user-images.githubusercontent.com/58173938/206700736-60b97811-6b82-4ac2-809e-54eaab2fb81f.png)

### Key added successfully

![26 Key added successfully](https://user-images.githubusercontent.com/58173938/206700838-9cdf2aaa-4b21-413b-a304-d2f0e46446bc.png)

### Click on repo

![27 Click on repo](https://user-images.githubusercontent.com/58173938/206700912-df156fb7-1553-498e-9cb3-6bbceb73710e.png)

### Copy the SSH link

![28 Copy the SSH link](https://user-images.githubusercontent.com/58173938/206701023-fbf920f3-10ee-439d-87ac-9db65bc7af2f.png)

### Check which branch you in

![29 check which branch you in](https://user-images.githubusercontent.com/58173938/206701064-feff4f8f-c3aa-4824-a5ac-53564a7e3512.png)

### Clone the repo

![29 Clone the repo](https://user-images.githubusercontent.com/58173938/206701188-ac06a809-7499-45d8-9eb6-cd75b607114d.png)

### Create the new branch and switch to it

![30 Create the new branch and switch to it](https://user-images.githubusercontent.com/58173938/206701305-5e77b18d-bd44-485e-9fd8-b4bb6e644f1e.png)

### We can see now we are switched to dev branch which we created same in jenkins

![31 we can see now we are switched to dev branch which we created same in jenkins](https://user-images.githubusercontent.com/58173938/206701375-59b291bb-c119-4022-a42c-ab9805379183.png)

### Create Jenkins file

![32 Create Jenkins file](https://user-images.githubusercontent.com/58173938/206701481-c91b56bb-e8bd-47e1-bfaf-cdfdd132cf3c.png)

### Install jenkinsfile extension

![33 install jenkinsfile extension](https://user-images.githubusercontent.com/58173938/206701537-2d2c4e91-3afd-49ee-873a-1c791372e5ba.png)

### Start the Pipeline

![34 Start the Pipeline](https://user-images.githubusercontent.com/58173938/206701633-064565b4-c67a-45a4-8041-c11f9b55f4cd.png)

### Modify the Jenkins file which is auto created by the jenkins extension

![35 Modify the Jenkins file which is auto created by the jenkins extension](https://user-images.githubusercontent.com/58173938/206701714-01dcf2c6-a1ad-43f9-8a4c-5d9c0937a65a.png)

### Install the java image to run the gradle on the docker agent

![36 install the java image to run the gradle on the docker agent](https://user-images.githubusercontent.com/58173938/206701819-c38b6313-f235-4928-ae1b-87009a9367de.png)

### Go to manage jenkins to install few plugins

![37 Go to manage jenkins to install few plugins](https://user-images.githubusercontent.com/58173938/206701930-201b13eb-446a-480c-9849-165283037627.png)

### Go to manage plugins

![38 Go to manage plugins](https://user-images.githubusercontent.com/58173938/206701983-5a2d6c71-e6c3-4c2f-8fa3-41deb47d2533.png)

### Go to available section

![39 Go to available section](https://user-images.githubusercontent.com/58173938/206702097-6e5e2e61-f762-471d-9bc8-accf9143850f.png)

### Search for sonarqube plugins and check on 5 plugins and tap on install without restart

![40 search for sonarqube plugins and check on 5 plugins and tap on install without restart](https://user-images.githubusercontent.com/58173938/206702173-378ced99-6805-4fa9-b26b-aecce101ffee.png)

### Installing all 5 plugins and related dependencies

![41 installing all 5 plugins and related dependencies](https://user-images.githubusercontent.com/58173938/206702314-f6313913-7014-4a83-80e5-2e51ffc927d2.png)

### Restart and relogin jenkins

![42 Restart and relogin jenkins](https://user-images.githubusercontent.com/58173938/206702425-5e705186-3068-46de-af21-962b13b15020.png)

### Go to configure system

![43 Go to configure system](https://user-images.githubusercontent.com/58173938/206702465-9e9aaaa5-e199-4404-a83e-025cfde1fe8d.png)

### Enable environment variables under configuration system settings

![44 Enable environment variables under configuration system settings](https://user-images.githubusercontent.com/58173938/206702518-3e72b1d6-1f7f-4935-879b-4d377eedd944.png)

### Paste the your sonarqube url (Jenkins wants to communicate with sonarqube it uploads the application code then sonar will validate against sonar rules

![45 paste the your sonarqube url (Jenkins wants to communicate with sonarqube it uploads the application code then sonar will validate against sonar rules)](https://user-images.githubusercontent.com/58173938/206702803-658f130e-9495-4f00-b3b3-7eef60d25cfb.png)



