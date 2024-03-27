# Setting the base to nodejs 8.9.0
FROM node:20.12.0-alpine@sha256:ce6596fb57e9c3c126a93add6a52f661298e17f0be51ef08cf6e1788213a9c9b

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