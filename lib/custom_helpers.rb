module CustomHelpers
  def title_helper
    return data.page.title if data.page.title && !blog?
    'code quest is a Ruby on Rails and iOS development studio.'
  end

  def description_helper
    data.page.description ? data.page.description : ''
  end

  def blog?
    current_page.path == 'blog.html'
  end

  def button_content(text)
    content_tag(:div, text, class: 'text') +
    content_tag(:div, class: 'wave') do
      partial 'svg/button_wave'
    end
  end
end
