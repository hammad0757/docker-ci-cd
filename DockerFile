FROM openjdk:21-rc-jdk
WORKDIR /app
COPY ./target/dockerCiCd.jar /app
EXPOSE 8280
CMD ["java","-jar","dockerCiCd.jar"]