# Use an official Golang runtime as a parent image
FROM golang:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Go app
RUN go build -o main .

# Expose port 8080 for the container
EXPOSE 8080

# Run the Go app when the container starts
CMD ["/app/main"]



