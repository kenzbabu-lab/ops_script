FROM tomcat:9
LABEL Author kens_lab
CMD ["catalina.sh", "run"]
EXPOSE 8080
