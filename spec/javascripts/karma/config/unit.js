'use strict';

module.exports = function(karma) {
  karma.set({
    basePath: '../',

    frameworks: ['jasmine', 'browserify'],

    files: ['vendor/external.js', 'spec/javascripts/**/*_spec.{js,coffee}'],

    reporters: ['dots'],

    preprocessors: {
      'spec/javascripts/**/*_spec.js': ['browserify'],
      'spec/javascripts/**/*_spec.coffee': ['coffee']
    },

    browsers: ['PhantomJS'],

    logLevel: 'LOG_DEBUG',

    // list of files to exclude
    exclude: [],

    // web server port
    port: 9876,

    // enable / disable colors in the output (reporters and logs)
    colors: true,

    autoWatch: true,

    captureTimeout: 60000,

    // browserify configuration
    browserify: {
      debug: true,
      transform: ['vueify', 'coffee']
    }
  });
};
