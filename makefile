VERSION=v3.2
APP_NAME=hello-go
build:
	@docker build -t andersonpids/${APP_NAME}:${VERSION} .
push:
	@docker push andersonpids/${APP_NAME}:${VERSION}
apply:
	@kubectl apply -f k8s/deployment.yaml
apply-watch:
	@kubectl apply -f k8s/deployment.yaml && watch -n1 kubectl get pods