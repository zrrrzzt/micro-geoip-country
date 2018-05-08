# Setting the base to nodejs 8.9.0
FROM node:8.9.0-alpine@sha256:b7f7ad1042c5e9a639b869d220c98f83c02ca2a1839b399211ff1bb09fed2d34

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