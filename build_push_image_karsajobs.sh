#build the image with name adr01/karsajobs and tag latest
sudo docker build -t adr01/karsajobs:latest .

# login to the docker hub
echo $env:PASSWORD_DOCKER_HUB | docker login -u adr01 --password-stdin

# push / upload the local image to the docker hub
docker push adr01/karsajobs:latest