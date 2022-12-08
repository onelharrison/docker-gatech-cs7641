DOCKER_HUB_USERNAME = onelharrison

IMAGE_NAME = $(DOCKER_HUB_USERNAME)/gatech-cs7641
IMAGE_TAG ?= dev

.PHONY : docker/build docker/login docker/push

docker/build :
	docker build -t $(IMAGE_NAME) .

docker/login :
	docker login -u $(DOCKER_HUB_USERNAME) -p $(DOCKER_HUB_PASSWORD)

docker/push :
	docker image push $(IMAGE_NAME):$(IMAGE_TAG)

release : docker/build docker/login docker/push
