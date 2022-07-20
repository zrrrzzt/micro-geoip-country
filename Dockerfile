# Setting the base to nodejs 8.9.0
FROM node:18.6.0-alpine@sha256:b3ca07adf425d043e180464aac97cb4f7a566651f77f4ecb87b10c10788644bb

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