# Setting the base to nodejs 8.9.0
FROM node:18.20.0-alpine@sha256:4a950f4babc26a8b1a92100e4d947f702cceceeddd20075d4f95cc882189d243

# Maintainer
MAINTAINER Geir Gåsodden

#### Begin setup ####

# Installs git
RUN apk add --update --no-cache git

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install --production

ENV NODE_ENV production

# Expose 3000
EXPOSE 3000

# Startup
ENTRYPOINT npm start