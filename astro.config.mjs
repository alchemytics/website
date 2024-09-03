import { defineConfig } from "astro/config";

import mdx from "@astrojs/mdx";
import tailwind from "@astrojs/tailwind";
import sitemap from "@astrojs/sitemap";

import node from "@astrojs/node";

// https://astro.build/config
export default defineConfig({
    site: "https://alchemytics.ru",
    integrations: [tailwind(), mdx(), sitemap()],
    output: "server",
    adapter: node({
        mode: "standalone",
        host: true,
    }),
});
