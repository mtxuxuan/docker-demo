FROM java:8
VOLUME /tmp
ADD target/docker-demo-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch  /docker-demo-0.0.1-SNAPSHOT.jar'
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]