FROM eclipse-temurin:21-jre-alpine
COPY --from=build /target/spring-boot-mvc-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]