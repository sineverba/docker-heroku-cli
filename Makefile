build:
	docker build --tag sineverba/testdockerheroku .

multiple:
	mkdir -vp ~/.docker/cli-plugins/
	curl --silent -L "https://github.com/docker/buildx/releases/download/v0.6.3/buildx-v0.6.3.linux-amd64" > ~/.docker/cli-plugins/docker-buildx
	chmod a+x ~/.docker/cli-plugins/docker-buildx
	docker buildx version
	docker run --rm --privileged tonistiigi/binfmt:qemu-v6.1.0-20 --install all
	docker buildx ls
	docker buildx create --name multiarch --driver docker-container --use
	docker buildx inspect --bootstrap --builder multiarch
	docker buildx build --platform linux/arm64/v8,linux/amd64,linux/arm/v6,linux/arm/v7 --tag sineverba/heroku-cli:test --push .

test:
	docker run --rm -it sineverba/testdockerheroku heroku -v | grep "7.59.0"

apps:
	docker run --rm -it -v ~/.netrc:/root/.netrc sineverba/testdockerheroku heroku apps

destroy:
	docker image rm sineverba/testdockerheroku