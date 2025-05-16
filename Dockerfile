FROM debian:bullseye
RUN apt-get update && apt-get install -y openjdk-17-jdk
COPY src/Main.java .
RUN javac Main.java
CMD ["java", "Main"]