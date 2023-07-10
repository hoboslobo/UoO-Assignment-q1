# I am basing my image on node:18-alpine, to minimize the image size 
FROM node:18-alpine

#Nextjs runs on port 3000 so we need to expose this port
EXPOSE 3000 

#setting the working directory
WORKDIR /app

#copying the applications into the working directory
COPY ./nextjs-app .

#installing application dependencies, clearing the cache, 
#and building a static build optimized for production
#Commands are run as one run command to minimize the number of layers
RUN npm install \
    && npm cache clean --force \
    && npm run build

#specifying the command to run in the container
CMD ["npm","run","start"]
