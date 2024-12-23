# Sử dụng node image có sẵn npm
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json và package-lock.json
COPY server/package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY server/ ./

# Set environment variables
ENV NODE_ENV=production
ENV PORT=5000

# Expose port
EXPOSE 5000

# Start command
CMD ["npm", "start"]