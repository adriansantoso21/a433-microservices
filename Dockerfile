#get the node 14 version for base image
FROM node:14

#create and change the active dir ro /app
WORKDIR /app

#copy the current directory to the /app
COPY . .

#create env variable 
ENV \
    NODE_ENV=production \
    DB_HOST=item-db

# install dependencies
RUN npm install --production --unsafe-perm && npm run build

#Expose the container port
EXPOSE 8080

#Start the app
CMD ["npm", "start"]