FROM ubuntu:latest
WORKDIR /app
COPY Devops /app/Devops
CMD ["ls", "-l", "/app/Devops"]
