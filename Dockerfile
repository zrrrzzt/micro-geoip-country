# Setting the base to nodejs 8.9.0
FROM node:8.14.0-alpine@sha256:dfc36646eddf67cb2e18d9be1cdecb5ead4907b0593297bdc471f4e90d698d89

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