FROM node:19.2.0
EXPOSE 3000 3001

WORKDIR alchemytics

# Prepare env
COPY package.json .
RUN npm install

# Copy configs
COPY astro.config.mjs .
COPY tailwind.config.cjs .
COPY tsconfig.json .

# Copy project files
COPY data data
COPY public public
COPY src src

RUN npm run build
