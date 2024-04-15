
FROM ubuntu:latest
COPY . .
WORKDIR /usr/src/dsi
RUN mkdir /mnvw
RUN ./mvnw clean package
CMD ./mvnw cargo:run -P tomcat90
