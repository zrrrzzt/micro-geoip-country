# Setting the base to nodejs 8.9.0
FROM node:8.16.0-alpine@sha256:396b157f138a837de34fc48dc0ca8e37bf04d2fefc568e962acf429418950948

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