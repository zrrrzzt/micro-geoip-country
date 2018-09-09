# Setting the base to nodejs 8.9.0
FROM node:8.11.4-alpine@sha256:1c38d992f89ae389450bc69799a0f2b7d1f9f2e6c445080a4648448e6449e8e4

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