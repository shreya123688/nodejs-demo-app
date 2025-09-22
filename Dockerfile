# Use official Node image
FROM node:18-alpine

WORKDIR /usr/src/app

# Install only production dependencies during image build
COPY package*.json ./
RUN npm ci --only=production

# Copy app source
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
