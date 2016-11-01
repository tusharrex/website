#!/bin/bash

# run linter

bundle exec rubocop
bundle exec scss-lint -c .scss-lint.yml source/stylesheets/**/*.scss
coffeelint -f coffeelint.json source/javascripts/application.js.coffee
bundle exec slim-lint -c .slim-lint.yml
