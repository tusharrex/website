$ ->
  onHover = (el, text) ->
    figcaption = el.parent().parent().children().last()
    caption = figcaption.children().first()
    caption.text(el.attr(text))

  $(".video-container").hover ->
    teamMember = $(this).children().first()
    onHover teamMember, 'data-position'
    unless teamMember.attr('data-image').match /(placeholder)/
      $('video', this).get(0).play()
  , ->
    teamMember = $(this).children().first()
    onHover teamMember, 'data-name'
    unless teamMember.attr('data-image').match /(placeholder)/
      $('video', this).get(0).load()
