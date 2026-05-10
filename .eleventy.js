module.exports = function (eleventyConfig) {
  return {
    dir: {
      input: "src",
      output: "_site"
    },
    passthroughFileCopy: true,
    templateFormats: ["njk", "md", "html"]
  };
};