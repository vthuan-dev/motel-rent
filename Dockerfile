FROM node:14-alpine

# Set working directory là /app/server luôn
WORKDIR /app/server

# Copy package.json trước
COPY server/package*.json ./

# Install dependencies
RUN npm install

# Copy toàn bộ code server
COPY server/ ./

# Set environment variables
ENV NODE_ENV=production
ENV PORT=5000

# Expose port
EXPOSE 5000

# Start command không cần cd nữa
CMD ["npm", "start"]