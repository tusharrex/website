require 'slim'
require 'lib/custom_helpers'

activate :directory_indexes
activate :blog do |blog|
  blog.permalink = 'blog/{title}.html'
  blog.sources = 'blog/{year}-{month}-{day}-{title}.html'
  blog.layout = 'layouts/website.html.slim'
  blog.paginate = true
  blog.per_page = 30
end

page '/index.html', layout: :landing_page

with_layout :website do
  page '/about.html'
  page '/blog.html'
  page '/contact.html'
  page '/join-our-crew.html'
  page '/thank-you.html'
  page '/work.html'
  page '/start-your-project.html'
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

helpers CustomHelpers
