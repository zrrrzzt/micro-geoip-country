# Setting the base to nodejs 8.9.0
FROM node:18.3.0-alpine@sha256:57b98f182ea7253f213f742f1f7bac3f881adc5e40d72f5eafbf2e70bf6f6647

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