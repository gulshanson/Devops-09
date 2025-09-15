# Stage 1 - builder 


FROM node:18-alpine AS builder
WORKDIR /app


COPY package*.json ./
RUN npm ci --no-audit --no-fund


COPY . .


# Stage 2 - runtime 


WORKDIR /app
ENV NODE_ENV=production


RUN addgroup -S appgroup && adduser -S appuser -G appgroup


COPY --from=builder /app/package*.json ./
RUN npm ci --production --no-audit --no-fund


COPY --from=builder /app ./


RUN rm -rf /root/.npm /tmp/* /var/cache/apk/*


RUN chown -R appuser:appgroup /app
USER appuser

EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD wget --spider --quiet http://127.0.0.1:3000/healthz || exit 1

CMD ["node", "index.js"]
