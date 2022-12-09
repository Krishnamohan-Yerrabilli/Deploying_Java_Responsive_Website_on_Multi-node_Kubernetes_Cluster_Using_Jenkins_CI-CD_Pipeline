cd sudo apt update

sudo apt update

sudo apt-get install -y software-properties-common

sudo apt-get install openjdk-11-jdk -y

java -version

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -

sudo apt-get install postgresql-contrib

sudo adduser sonar

systemctl status postgresql

sudo systemctl enable postgresql

sudo passwd postgres

su - postgres

exit ctrl+D (get to root normal)

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.1.0.47736.zip

sudo apt install unzip

sudo unzip sonarqube-9.1.0.47736.zip (modify dependent on version)

su - postgres

createuser sqube

psql

ALTER USER sqube WITH ENCRYPTED PASSWORD 'sqube';

CREATE DATABASE sqube OWNER sqube;

\q

exit

cd /opt/

sudo mkdir sonar

cd /opt/sonar

sudo chown -R sonar:sonar /opt/sonar

cd

cd sonar(version)

cd conf

nano sonar.properties


```
sonar.ce.javaAdditionalOpts=server
sonar.web.host=127.0.0.1
sonar.jdbc.url=jdbc:postgresql://localhost/sqube
sonar.jdbc.username=sqube
sonar.jdbc.password=sqube
```

cd

sudo nano sonarqube-9.1.0.47736/bin/linux-x86-64/sonar.sh

RUN_AS_USER=sonar //save and exit

sudo nano  sonarqube-9.1.0.47736/elasticsearch/config/elasticsearch.yml

```
node.name:${hostname}
network.host: 0.0.0.0
```

sudo visudo

```
sonar ALL=(ALL)         NOPASSWD: ALL
```

ls

sudo mv (sonarqubefile) /opt/sonar/  

cd /opt/sonar

sudo chown -R sonar:sonar /opt/sonar

su - sonar

/opt/sonar/sonarqube-9.1.0.47736/bin/linux-x86-64/sonar.sh start

sudo netstat -plnt (if we cant see then check logs)

cd /opt/sonar/

cd sonarqube-9.1.0.47736/logs

ls -ltr

sudo sysctl -w vm.max_map_count=262144

/opt/sonar/sonarqube-9.1.0.47736/bin/linux-x86-64/sonar.sh start

sudo netstat -plnt

sudo nano /opt/sonar/sonarqube-9.1.0.47736/conf/sonar.properties

```
webserver 0.0.0.0
```
-server (under the properties)


