# Setting the base to nodejs 8.9.0
FROM node:8.16.0-alpine@sha256:47e18adcfe5e72bcf0a72f868b01cfd0a006084a2c23851f203f46e46529d2dd

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