#build the image with name item-app and tag v1
sudo docker build -t item-app:v1 .

# list all the local images
sudo docker images

# change the name of the images
sudo docker tag item-app:v1 adr01/item-app:v1

# login to the docker hub
echo $PASSWORD_DOCKER_HUB | sudo docker login -u adr01 --password-stdin

# push / upload the local image to the docker hub
sudo docker push adr01/item-app:v1
