FROM node:22-bookworm AS development
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

FROM mcr.microsoft.com/playwright:v1.63.0-noble AS test
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENV CI=1
RUN npm run test:e2e

FROM test AS build
ARG APP_ENV=production
RUN npm run typecheck && npx vite build --mode "${APP_ENV}"

FROM nginx:1.27-alpine AS production-runtime
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1