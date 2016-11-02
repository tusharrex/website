#!/bin/bash

# run linter

bundle exec slim-lint -c .slim-lint.yml source
bundle exec bundle exec ruby -W0 -S rubocop lib spec
coffeelint -f coffeelint.json source/javascripts/
bundle exec scss-lint -c .scss-lint.yml source/stylesheets/**/*.scss

