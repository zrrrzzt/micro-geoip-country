# Setting the base to nodejs 8.9.0
FROM node:8.13.0-alpine@sha256:7d242932c3ff95abf200505f884ba94e8a2543e42d073a26663d28bdfc6eb376

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