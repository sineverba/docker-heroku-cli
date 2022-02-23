IMAGE_NAME=sineverba/testdockervercel
CONTAINER_NAME=testdockervercel

build:
	docker build --tag $(IMAGE_NAME) .

test:
	docker run --name $(CONTAINER_NAME) --rm -it $(IMAGE_NAME) node -v | grep "16.14.0"
	docker run --name $(CONTAINER_NAME) --rm -it $(IMAGE_NAME) npm -v | grep "8.5.1"
	docker run --name $(CONTAINER_NAME) --rm -it $(IMAGE_NAME) heroku -v | grep "7.59.2"

apps:
	docker run --rm -it -v ~/.netrc:/root/.netrc $(IMAGE_NAME) heroku apps

destroy:
	docker image rm $(IMAGE_NAME)