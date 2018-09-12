# Setting the base to nodejs 8.9.0
FROM node:8.12.0-alpine@sha256:22e45f32886625214b4b56af660eea328df38cfe1f75b5e78aabe937aba85d10

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