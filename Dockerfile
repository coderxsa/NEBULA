# Use the latest Node.js image
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files first (for better caching)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install --production

# Copy the rest of the project files
COPY . .

# Expose port (if needed)
EXPOSE 3000

# Start the bot
CMD ["bash", "start.sh"]
