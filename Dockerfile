# Use ARM64-compatible Node.js image
FROM arm64v8/node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose any required ports (if applicable)
EXPOSE 3000

# Start the bot
CMD ["npm", "start"]
