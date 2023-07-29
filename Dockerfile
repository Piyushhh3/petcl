FROM openjdk:17-oracle

RUN mkdir -p /home/petclinic

COPY target/*.jar /home/petclinic/

WORKDIR /home/petclinic/

EXPOSE 8080

ENV MYSQL_URL jdbc:mysql://mysql:3306/petclinic

CMD ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar", "--spring.profiles.active=mysql"]