mkdir /usr/lib/jvm
cp -r Downloads/jdk-8u131-linux-x64.tar.gz /usr/lib/jvm/
cd /usr/lib/jvm
tar xvzf jdk-8u131-linux-x64.tar.gz
a="JAVA_HOME=/usr/lib/jvm/jdk1.8.0_131"
b="PATH=\$PATH:\$JAVA_HOME/bin"
c="export JAVA_HOME"
d="export PATH"
echo $a >> /etc/profile
echo $b >> /etc/profile
echo $c >> /etc/profile
echo $d >> /etc/profile
update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_131/bin/java" 1
update-alternatives --install "/usr/bin/java" "javac" "/usr/lib/jvm/jdk1.8.0_131/bin/javac" 1
update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_131/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_131/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0_131/bin/javaws" 1
update-alternatives --set java /usr/lib/jvm/jdk1.8.0_131/bin/java
update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_131/bin/javac
update-alternatives --set javaws /usr/lib/jvm/jdk1.8.0_131/bin/javaws
source /etc/profile
source /home/`logname`/buffer/check_version_java.sh
