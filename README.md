# docker-gatech-cs7641

Docker image for completing assignments for GaTech's Machine Learning (CS7641) course.

## Getting started

Clone this repo and build the docker image

```
git checkout https://github.com/onelharrison/docker-gatech-cs7641.git

cd docker-gatech-cs7641/

docker build -t gatech-cs7641 .
```

Clone my template project repo for the course and run the container there. Feel free to run the container in your own project repo.

```
git clone https://github.com/onelharrison/gatech-cs7641-template.git ../gatech-cs7641

cd ../gatech-cs7641/

docker run -d -v "$(pwd):/workspace/labs/" -p 9000:9000 --name gatech-ml gatech-cs7641
```

View the container's logs for the link to the running instance of Jupyter Lab

```
docker logs gatech-ml
```

Run commands directly in the container if necessary

```
docker exec -it gatech-ml bash
```