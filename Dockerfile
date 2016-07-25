FROM node:6.2-slim
MAINTAINER Ali Khalili "hyperir@gmail.com"

# ---------------- #
#   Installation   #
# ---------------- #

RUN apt-get update && \
 apt-get install -y git && \
 apt-get autoremove -y && \
 apt-get -y clean && \
 rm -rf /var/lib/apt/lists/*

RUN npm install bower -g && \
 npm install webpack -g

# ----------------- #
#   Configuration   #
# ----------------- #

RUN mkdir /nodeApp
WORKDIR /nodeApp

