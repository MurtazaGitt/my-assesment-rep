# syntax=docker/dockerfile:1

FROM node:22-alpine AS base

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm ci

# Rebuild native dependencies for the correct architecture
RUN npm rebuild lightningcss

# Copy the rest of the app
COPY . .

# Build the app
RUN npm run build

# Expose and start
EXPOSE 3000
CMD ["npm", "start"]
