# We are starting with a base image of node 18 
FROM node:18-alpine3.16

#Setup our working directory within the container
WORKDIR /src/

#Copy our code from the host machine to the container
COPY . .

#install our dependecies 
RUN npm install 

#expose the port we want to run on 
EXPOSE 3000

# run our application 
CMD ["npm", "start"]
