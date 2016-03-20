require 'slim'
require 'lib/custom_helpers'
require 'builder'

activate :blog do |blog|
  blog.permalink = 'blog/{title}.html'
  blog.sources = 'blog/{year}-{month}-{day}-{title}.html'
  blog.layout = 'layouts/blog.html.slim'
  blog.paginate = true
  blog.per_page = 30
  blog.new_article_template = 'source/blog/template.html.erb'
end
activate :directory_indexes

page '/index.html', layout: :landing_page
page '/404.html', layout: :website
page '/sitemap.xml', layout: false

with_layout :website do
  page '/blog.html'
  page '/contact.html'
  page '/join-our-crew.html'
  page '/thank-you.html'
  page '/work.html'
  page '/start-your-project.html'
  page '/ventures.html'
  page '/team.html'
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
