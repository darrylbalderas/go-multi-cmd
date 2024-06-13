lint:
	go fmt ./...
	go vet ./...
	golangci-lint run -v ./...

producer_docker:
	docker build --build-arg CMD_NAME=producer -t producer:latest .
	docker run producer:latest

consumer_docker:
	docker build --build-arg CMD_NAME=consumer -t consumer:latest .
	docker run consumer:latest