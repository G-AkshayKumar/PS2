const path = require("path");

module.exports = {
  entry: "./node_modules/@trustvc/trustvc/dist/index.js", // The entry point for the library
  output: {
    filename: "bundle.js", // The bundled file name
    path: path.resolve(__dirname, "dist"), // Output directory
    library: "trustvc", // Expose trustvc as a global library
    libraryTarget: "window", // Make it available on the window object
  },
  mode: "production", // Use production mode for smaller bundle size
};
