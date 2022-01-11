# Getting the Image From Docker Server
FROM node:alpine

# Specifying the Working Dir
WORKDIR /usr/app

# Copying Local package from src local[./] to image local[./]
COPY ./package.json ./

# Running the Command
RUN npm install

COPY ./ ./
# Starting Command
CMD ["npm","start"]

# docker build -t shivam/web . <- for Named Images
# docker run -p 8080:8080 shivam/web <- Exposing the Port