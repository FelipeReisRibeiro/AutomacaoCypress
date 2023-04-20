const cucumber = require('cypress-cucumber-preprocessor').default
const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber())
    },
    specPattern: "cypress/e2e/*.feature",
    viewportHeight: 1080,       //define por padrao o tamanho da tela para 1920 x1080
    viewportWidth: 1920,        //define por padrao o tamanho da tela para 1920 x 1080
    defaultCommandTimeout: 10000
  },
});
