# Setting the base to nodejs 8.9.0
FROM node:8.17.0-alpine@sha256:e5767067cd01b5a07fd6525c3e05283541e32b8b7de6ff23d9da4d5cb9e1b0f5

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