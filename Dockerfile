FROM node:15
WORKDIR /app
COPY package.json .
# At build time we use RUN command
RUN npm install
COPY . ./
EXPOSE 3000
# At run time we use CMD command
CMD ["npm", "run", "dev"]

# Sync paths
# docker run -v $(pwd):/app -p 3000:3000 -d --name node-app node-app-image