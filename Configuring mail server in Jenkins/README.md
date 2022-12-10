<div align=center>
  
## Configuring Mail Server In Jenkins
  
  ![snap](https://user-images.githubusercontent.com/58173938/206854989-ec9281d9-2494-4dc3-b2e0-78d68f644d71.png)
  
 </div>
 
To configure a mail server in Jenkins, we will need to do the following:

- Log in to the Jenkins server and go to the "Manage Jenkins" page.
- Click on the "Configure System" link.
- Scroll down to the "E-mail Notification" section.
- Enter the SMTP server hostname or IP address in the "SMTP server" field.
- Enter the port number in the "SMTP port" field. This is usually 25 for unencrypted connections, or 465 for SSL/TLS connections.
- If SMTP server requires authentication, enter the username and password in the appropriate fields.
- If SMTP server uses SSL/TLS, check the "Use SSL" or "Use TLS" option, as appropriate.
- Click on the "Test Configuration" button to test the mail server configuration.

Once we have configured the mail server, we can use it to send email notifications from Jenkins. These notifications can be sent for a variety of events, such as the completion of a build or the failure of a build step. we can configure the types of events that trigger email notifications in the "E-mail Notification" section of the Jenkins configuration.

### Go to Manage plugins

![1 Go to Manage plugins](https://user-images.githubusercontent.com/58173938/206855314-fa0b90fc-8194-40e1-ad9b-76d1976a0cb3.png)

### Install email publisher plugin

![2 install email publisher plugin](https://user-images.githubusercontent.com/58173938/206855347-6d7d32da-2bdb-4737-a77e-0ead49d57389.png)

### Go to the Dashboard

![3 Go to the Dashboard](https://user-images.githubusercontent.com/58173938/206855364-abe6c612-c310-492e-ad45-fedea33cffe4.png)

### Go to manage Jenkins

![4 Go to manage Jenkins](https://user-images.githubusercontent.com/58173938/206855383-90c522de-6f66-4702-bea0-05c828ea8c6b.png)

### Go to configure system settings

![5 Go to configure system settings](https://user-images.githubusercontent.com/58173938/206855394-61de3764-87bf-4a2b-a940-a45af2bde45c.png)

### Add mail

![6 Add mail](https://user-images.githubusercontent.com/58173938/206855398-7c41e2c1-a542-4ee0-ac13-9063b9258fff.png)

### Testing is successful not yet configure

![7 Testing is successful not yet configure ](https://user-images.githubusercontent.com/58173938/206855417-79f529e3-c54b-48ce-9bd8-bab087d45348.png)

### Post added to send mail

![8 post added to send mail](https://user-images.githubusercontent.com/58173938/206855428-83e4f25d-4fba-4f77-9dd0-cb8ed0cf5ade.png)

### Mail successfully sended

![9 mail successfully sended](https://user-images.githubusercontent.com/58173938/206855445-1ebaf7d4-275c-433a-bb29-fa782e2da11b.png)

## ❤ Show your support

Give a ⭐️ if this project helped you, Happy learning!
