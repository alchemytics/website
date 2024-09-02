/** @type {import('tailwindcss').Config} */
export default {
    content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
    theme: {
        extend: {
            colors: {
                background: {
                    DEFAULT: "#1E1E2E",
                },
                font: {
                    primary: "#E0E0E0",
                    secondary: "#9AA1B3",
                    accent: "#FFBF00",
                },
                button: {
                    DEFAULT: "#2E3440",
                },
                border: {
                    DEFAULT: "#4C566A",
                },
                error: {
                    DEFAULT: "#FF4C4C",
                },
            },
        },
    },
    plugins: [],
};
