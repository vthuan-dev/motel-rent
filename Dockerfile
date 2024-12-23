FROM node:14

# Tạo thư mục app
WORKDIR /app

# Copy toàn bộ code server vào container
COPY server/ ./

# Install dependencies
RUN npm install

# Set environment variables
ENV NODE_ENV=production
ENV PORT=5000

# Expose port
EXPOSE 5000

# Start command không cần cd nữa vì đã ở đúng thư mục
CMD ["npm", "start"]