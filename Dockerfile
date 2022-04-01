# Setting the base to nodejs 8.9.0
FROM node:17.8.0-alpine@sha256:787f03b9c8fa9942e98707053b02ea5e390d770a47ec0959a45adb0e277454fb

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