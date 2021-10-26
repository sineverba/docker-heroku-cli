build:
	docker build --tag sineverba/testdockerheroku .

test:
	docker run --rm -it sineverba/testdockerheroku heroku -v | grep "7.59.1"
	docker run --rm -it sineverba/testdockerheroku npm -v | grep "8.1.1"

apps:
	docker run --rm -it -v ~/.netrc:/root/.netrc sineverba/testdockerheroku heroku apps

destroy:
	docker image rm sineverba/testdockerheroku