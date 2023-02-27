FROM openjdk:11-jre-slim
RUN apt-get update && apt-get install -y openjdk-11-jdk
COPY HelloWorld.java /usr/app/
WORKDIR /usr/app
RUN javac HelloWorld.java
ENV CLASSPATH /usr/app
CMD ["java", "HelloWorld"]
