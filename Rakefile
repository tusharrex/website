desc 'Run linters'
task :linters do
  puts 'Analizing scss with scss-lint...'
  system('scss-lint')
  # puts 'Analizing js with coffeelint'
  # Coffeelint.run_test_suite('source/javascripts/application.js.coffee', config_file: 'coffeelint.json')
  puts 'Analizing slim files with slim-lint...'
  system('slim-lint -c .slim-lint.yml')
end
