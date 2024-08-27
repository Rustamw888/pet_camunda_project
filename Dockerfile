FROM openjdk:17-jdk-slim

# Установите рабочую директорию
WORKDIR /app

# Установите Maven
RUN apt-get update && apt-get install -y maven

# Скопируйте файл pom.xml и загружайте зависимости
COPY pom.xml .
RUN mvn dependency:go-offline

# Копируйте остальные файлы приложения
COPY src ./src

# Соберите приложение
RUN mvn clean package -DskipTests

# Запустите приложение
CMD ["java", "-jar", "target/pet-camunda-example-0.0.1-SNAPSHOT.jar"]