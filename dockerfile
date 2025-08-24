FROM node:20-alpine

ENV NODE_ENV=production
ENV PORT=3000

WORKDIR /app

# copia package.json y package-lock.json
COPY package*.json ./
RUN npm ci --omit=dev

COPY src ./src

EXPOSE 3000
RUN addgroup -S nodegroup && adduser -S nodeuser -G nodegroup
USER nodeuser

CMD ["npm", "start"]
