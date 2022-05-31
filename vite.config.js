import Unocss from "unocss/vite";

export default {
  base: "./",
  plugins: [Unocss({})],
  build: {
    outDir: "docs",
  },
};
