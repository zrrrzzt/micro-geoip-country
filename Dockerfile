# Setting the base to nodejs 8.9.0
FROM node:8.14.1-alpine@sha256:20a62c59d7fba25d5de6373ef39734c1caaa788c3d0be0c2c4a92ca619a4d09e

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