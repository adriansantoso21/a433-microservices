#build the image with name adr01/shipping-service and tag latest
sudo docker build -t adr01/shipping-service:latest .

# login to the docker hub
echo $env:PASSWORD_DOCKER_HUB | docker login -u adr01 --password-stdin

# push / upload the local image to the docker hub
docker push adr01/shipping-service:latest