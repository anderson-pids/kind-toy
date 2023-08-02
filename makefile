VERSION=v2
APP_NAME=hello-go
build:
	@docker build -t andersonpids/${APP_NAME}:${VERSION} .
push:
	@docker push andersonpids/${APP_NAME}:${VERSION}