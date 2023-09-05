# Build the project
build:
	go build -o main .

# Create a Docker image with name golang-rest-api and always latest version
docker-build:
	docker build -t golang-rest-api:latest .

# Create a task to run the Docker image with name golang-rest-api
docker-run:
	docker run -p 8081:8081 golang-rest-api:latest

test:
	go test -v ./...