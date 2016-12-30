module CustomHelpers
  FB_TAGS_PARTIALS = [
    'elixir',
    'frontend',
    'growth',
    'ios',
    'ruby-on-rails',
    'sales',
    'content-writer',
  ]

  def title_helper
    return data.page.title if data.page.title && !containing_blog_posts?
    'code quest is a Ruby on Rails and iOS development studio.'
  end

  def description_helper
    data.page.description ? data.page.description : ''
  end

  def facebook_meta_data_url
    path = request['path'].split('/')
    path.pop
    [root_url, path].flatten.join('/')
  end

  def containing_blog_posts?
    current_page.path.in? ['blog.html', 'index.html']
  end

  def render_fb_tags_partial
    page_name = current_page.path.split('/').last.split('.').first
    if page_name.in? FB_TAGS_PARTIALS
      partial "partials/fb_tags_#{page_name}"
    else
      partial 'partials/fb_tags'
    end
  end

  def button_content(text, icon = nil)
    content_tag(:div, text, class: 'text') +
      icon_content(icon)
  end

  def icon_content(icon)
    content_tag(:div, class: 'button-icon') do
      partial icon
    end if icon
  end

  def related_post?(article, current_article)
    (article.tags - current_article.tags).length != article.tags.length
  end

  def find_related(blog, current_article, count)
    result = blog.articles.each_with_object([]) do |article, res|
      if article.title != current_article.title
        res.push(article) if related_post?(article, current_article)
      end
    end
    suggested_posts(result, count)
  end

  def suggested_posts(result, count)
    if result.length >= count
      result.sample(count)
    else
      result.push(blog.articles - result).sample(count - result.length)
      result.flatten.sample(count)
    end
  end

  def summary_open_graph(article_summary)
    article_summary
      .gsub(%r{<\/?[^>]*>}, '')
      .gsub('\n\n', ' ')
      .gsub('&amp;', '&')
  end
end
