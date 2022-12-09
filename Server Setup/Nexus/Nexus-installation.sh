apt-get install wget
java -version
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -xvf latest-unix.tar.gz
cd nexus-3.35.0-02/bin
./nexus start
./nexus status
