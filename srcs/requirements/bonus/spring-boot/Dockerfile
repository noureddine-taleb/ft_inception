FROM debian:bookworm

RUN apt update && apt install -y openjdk-17-jre openjdk-17-jdk maven && rm -rf /app

COPY ./conf /app

WORKDIR /app

EXPOSE 8080/tcp

ENTRYPOINT ["mvn", "spring-boot:run"]

