FROM ubuntu
RUN apt-get -y update &amp;&amp; apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get -y install curl
RUN mkdir /usr/local/tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp &amp;&amp; tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.0.20/* /usr/local/tomcat/
EXPOSE 8080
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD ["bash"]
LABEL org.opencontainers.image.authors="kens_lab@project.com"
WORKDIR /usr/local/tomcat/webapps