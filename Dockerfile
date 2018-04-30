# Setting the base to nodejs 8.9.0
FROM node:8.9.0-alpine@sha256:756a051425239509f583e5beec7e2b6f63d766fac53d686aaee3cd10a9726223

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