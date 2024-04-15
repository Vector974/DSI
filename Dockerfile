
FROM ubuntu:latest
COPY . .
WORKDIR /usr/src/dsi
RUN ./mvnw clean package
CMD ./mvnw cargo:run -P tomcat90
