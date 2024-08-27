FROM openjdk:17-alpine

WORKDIR /app

COPY target/pet-camunda-example-0.0.1-SNAPSHOT.jar pet-camunda-example-0.0.1-SNAPSHOT.jar
#COPY ["java", "-jar", "target/pet-camunda-example-0.0.1-SNAPSHOT.jar/" ]

#EXPOSE 8081

ENTRYPOINT ["java", "-jar", "pet-camunda-example-0.0.1-SNAPSHOT.jar"]
   
