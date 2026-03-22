#베이스 이미지:Java11이 포함된 경량 이미지
FROM eclipse-temurin:21-jdk-alpine
#작업 디렉토리 생성
WORKDIR /app
#JAR파일을 컨테이너로 복사
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
#컨테이너 실행 시 실행할 명령어
CMD ["java","-jar","app.jar"]