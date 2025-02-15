FROM node:23.8.0-slim
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /alchemytics/website

# Prepare env
COPY package.json .
COPY pnpm-lock.yaml .
RUN pnpm install --prod --frozen-lockfile --ignore-scripts

# Copy configs
COPY astro.config.mjs .
COPY tsconfig.json .

# Copy project files
COPY public public
COPY src src

# Build
RUN pnpm astro telemetry disable
RUN pnpm run build

# Launch 
ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321
ENTRYPOINT ["node", "/alchemytics/website/dist/server/entry.mjs"]
