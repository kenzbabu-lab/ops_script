FROM ubuntu
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get -y install curl
RUN mkdir /usr/local/tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.40/* /usr/local/tomcat/
EXPOSE 8080
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD ["bash"]
LABEL org.opencontainers.image.authors="kens_lab@project.com"
WORKDIR /usr/local/tomcat/webapps