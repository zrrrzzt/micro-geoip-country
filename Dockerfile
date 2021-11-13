# Setting the base to nodejs 8.9.0
FROM node:17.1.0-alpine@sha256:993bdfb0da7ae8fa4dad7282f797e3e26e88f810d410e0b0409d132d1fb17af3

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