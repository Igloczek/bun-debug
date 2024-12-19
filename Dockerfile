FROM oven/bun:1.1.40
RUN apt-get update && apt-get install -y python3 build-essential

WORKDIR /usr/src/app
COPY package.json bun.lockb ./
RUN bun install --verbose
