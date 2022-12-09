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





