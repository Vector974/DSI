FROM ubuntu:latest
COPY . .
WORKDIR /usr/src/dsi
RUN mkdir mvnw
RUN chmod +x mvnw
RUN ./mvnw clean package
CMD ./mvnw cargo:run -P tomcat90
