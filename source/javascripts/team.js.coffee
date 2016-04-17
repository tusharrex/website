$ ->
  onHover = (el, text, path) ->
    figcaption = el.parent().children().last()
    caption = figcaption.children().first()
    caption.text(el.attr(text))
    unless el.attr('data-image').match /(placeholder)|(join)/
      el.attr('src', el.attr(path))

  $('.team-member').hover ->
    onHover $(this), 'data-position', 'data-gif'
  , ->
    onHover $(this), 'data-name', 'data-orig'
