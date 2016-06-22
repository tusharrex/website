blog_url = URI.join(root_url, 'blog/')
feed_url = URI.join(root_url, current_page.path)
articles = blog.articles

xml.instruct!
xml.feed 'xmlns' => 'http://www.w3.org/2005/Atom' do
  xml.title 'code quest blog'
  xml.subtitle 'We write about clean code, project management and startups'
  xml.id blog_url
  xml.link 'href' => blog_url
  xml.link 'href' => feed_url, 'rel' => 'self'
  xml.updated(articles.first.date.to_time.iso8601)

  articles[0..5].each do |article|
    article_url = URI.join(root_url, article.url)
    xml.entry do
      xml.title article.title
      xml.link 'rel' => 'alternate', 'href' => article_url
      xml.id article_url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name article.data.author }
      xml.summary article.summary(500), type: 'html'
      xml.content article.body, type: 'html'
    end
  end
end
