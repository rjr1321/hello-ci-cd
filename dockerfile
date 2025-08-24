FROM node:20-alpine

ENV NODE_ENV=production
ENV PORT=3000

WORKDIR /app

# Solo los archivos necesarios
COPY package.json ./
RUN npm ci --omit=dev

COPY src ./src

EXPOSE 3000

# Usuario no root
RUN addgroup -S nodegroup && adduser -S nodeuser -G nodegroup
USER nodeuser

CMD ["npm", "start"]
