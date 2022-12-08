Static code analysis is a method for identifying bugs and other quality issues in the program by examining the source code without actually running it. This is achieved by scanning the codebase and tracing code paths to find common code smells, potential bugs, tech debt (e.g., duplicate code), unit test coverage, and code logic complexity. Static code analysis can be done manually but there are many static code analyzer tools to automate this. We’ll look at one of these tools, SonarQube, and walk through the process of setting it up locally and adding a static code analysis step to the Continuous Integration/Continuous Delivery (CI/CD) process for your projects.

### Provisioning SonarQube Instance

![1 sonarqube provison](https://user-images.githubusercontent.com/58173938/206370112-a27858e0-d295-4914-b2fb-b287ee9bfa6e.png)

### Change to ubuntu 18.04 lts and 15gb of memory

![2 boot disk change to ubuntu 18 04 lts and 15gb of memory](https://user-images.githubusercontent.com/58173938/206370300-edae2b86-8109-4e75-8cfc-8394609b5512.png)

### Allow http and https traffic and tap on create

![3 Allow http and https traffic and tap on create](https://user-images.githubusercontent.com/58173938/206370409-a437a2d9-4e09-43b0-8339-957866057a9d.png)


