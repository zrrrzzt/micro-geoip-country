# Setting the base to nodejs 8.9.0
FROM node:8.16.2-alpine@sha256:748663b62f6c7c48921b426696b9e5ceee6b1e61a0c2dd76570f3516c660b82c

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