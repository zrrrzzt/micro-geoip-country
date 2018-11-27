# Setting the base to nodejs 8.9.0
FROM node:8.13.0-alpine@sha256:eeb9c1cd3d4a97d741593ae04f45d33a16b376958bb0b041331eb33f66fc5258

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