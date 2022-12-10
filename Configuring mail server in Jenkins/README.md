<div align=center>
  
## Configuring mail server in Jenkins
  
  ![snap](https://user-images.githubusercontent.com/58173938/206854989-ec9281d9-2494-4dc3-b2e0-78d68f644d71.png)
  
 </div>
 
 
To configure a mail server in Jenkins, we will need to do the following:

```
Log in to the Jenkins server and go to the "Manage Jenkins" page.
Click on the "Configure System" link.
Scroll down to the "E-mail Notification" section.
Enter the SMTP server hostname or IP address in the "SMTP server" field.
Enter the port number in the "SMTP port" field. This is usually 25 for unencrypted connections, or 465 for SSL/TLS connections.
If SMTP server requires authentication, enter the username and password in the appropriate fields.
If SMTP server uses SSL/TLS, check the "Use SSL" or "Use TLS" option, as appropriate.
Click on the "Test Configuration" button to test the mail server configuration.
```

Once we have configured the mail server, we can use it to send email notifications from Jenkins. These notifications can be sent for a variety of events, such as the completion of a build or the failure of a build step. we can configure the types of events that trigger email notifications in the "E-mail Notification" section of the Jenkins configuration.
