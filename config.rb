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
page '/feed.xml', layout: false
page '/sitemap.xml', layout: false
page '/google9e4f1bcdcf77d753.html', layout: false, directory_index: false

with_layout :website do
  page '/blog.html'
  page '/contact.html'
  page '/join-our-crew.html'
  page '/thank-you.html'
  page '/work.html'
  page '/start-your-project.html'
  page '/ventures.html'
  page '/team.html'
  page '/join-our-crew/elixir.html'
end

configure :development do
  activate :livereload
  activate :pry
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :root_url, 'http://codequest.com'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :imageoptim do |options|
    options.manifest = true
    options.skip_missing_workers = true
    options.threads = true
    options.image_extensions = %w(.png .jpg .gif .svg)
  end
  activate :gzip
end

helpers CustomHelpers
