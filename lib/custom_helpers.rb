module CustomHelpers
  def title_helper
    data.page.title ? data.page.title : 'code quest is a Ruby on Rails and iOS development studio.'
  end

  def description_helper
    data.page.description ? data.page.description : ''
  end
end