module CustomHelpers
  def title_helper
    return data.page.title if data.page.title
    'code quest is a Ruby on Rails and iOS development studio.'
  end

  def description_helper
    data.page.description ? data.page.description : ''
  end
end
