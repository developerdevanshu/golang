FROM golang:1.20

WORKDIR /app

COPY . .

# Initialize Go module inside Docker
RUN go mod init service1

# Then build the app
RUN go build -o main

EXPOSE 8081

CMD ["./main"]      
