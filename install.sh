# dependencies
sudo yum install git
sudo yum install java-1.8.0-openjdk
sudo yum groupinstall "Development Tools" #gcc

## maven
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version


# export java8
export JAVA_HOME="/usr/lib/jvm/jre-1.8.0-openjdk"
export SCALA_HOME="~/scala-2.12.2"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
. ~/.bashrc

# install scala
wget https://downloads.lightbend.com/scala/2.12.2/scala-2.12.2.tgz
tar -xvzf scala-2.12.2.tgz
rm scala-2.12.2.tgz*

# pull down repositories
rm -rf Rutsubo
rm -rf Eyepatch

git clone https://github.com/ItCouldHaveBeenGreat/Rutsubo.git
git clone https://github.com/ItCouldHaveBeenGreat/Eyepatch.git

# rutsubo setup
virtualenv Rutsubo
source Rutsubo/bin/activate
cd Rutsubo
pip install --upgrade pip
# why aren't these in requirements.txt?
sudo pip install -r requirements.txt

# eyepatch setup
cd ~/Eyepatch
mvn package
cd ~/





