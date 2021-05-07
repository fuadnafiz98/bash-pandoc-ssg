const colors = require("tailwindcss/colors");

module.exports = {
  purge: {
    mode: "all",
    // preserveHtmlElements: false,
    // content: ["./src/**/*.html"],
    // content: ["../../../blk/**/*.html"],
    content: ["./_pages/**/*.html"],
    options: {
      keyframes: true,
    },
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      primary: "#F3F3F3",
      transparent: "transparent",
      current: "currentColor",
      black: colors.black,
      white: colors.white,
      gray: colors.gray,
      // cgray: colors.coolGray,
      // bgray: colors.blueGray,
      indigo: colors.indigo,
      // red: colors.rose,
      yellow: colors.amber,
    },
    extend: {
      colors: {},
      fontFamily: {
        sans: ["Inter"],
      },
    },
  },
  variants: {},
  plugins: [require("@tailwindcss/typography")],
};
