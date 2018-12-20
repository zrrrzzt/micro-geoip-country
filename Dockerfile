# Setting the base to nodejs 8.9.0
FROM node:8.14.1-alpine@sha256:27f19125ce64a3edd113f9d4223796f5a2aad3ecad31bc55756fd93d91777452

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