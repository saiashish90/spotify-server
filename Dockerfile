FROM node:12-slim

WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY . ./

# Run the server
CMD node server.js