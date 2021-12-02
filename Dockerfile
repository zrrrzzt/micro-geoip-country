# Setting the base to nodejs 8.9.0
FROM node:17.2.0-alpine@sha256:170fc720da95dca9cc783e504dda86670393ddd14f540afaceebd0cf50a4b167

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