FROM node:22.5.1-slim
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

WORKDIR /alchemytics/website

# Prepare env
COPY package.json .
COPY pnpm-lock.yaml .
RUN corepack enable && pnpm install --prod --frozen-lockfile --ignore-scripts

# Copy configs
COPY astro.config.mjs .
COPY tailwind.config.mjs .
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
