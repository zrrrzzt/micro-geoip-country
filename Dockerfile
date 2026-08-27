# Setting the base to nodejs 8.9.0
FROM node:24.20.0-alpine@sha256:229ca4bf7cc64a8c41ad43c2782745cb46c0c07dfdf90636c002f8825586a3fc

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