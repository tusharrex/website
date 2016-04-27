$ ->
  teamMember = (el) -> $(el).find('.team-member')

  onHover = (el, text) ->
    el.closest('.team-element').children('figcaption').children('.caption').
    text(el.attr(text))

  $('img.team-member').hover ->
    onHover $(this), 'data-position'
  , ->
    onHover $(this), 'data-name'

  $(".video-container").hover ->
    onHover teamMember(this), 'data-position'
    $('video', this).get(0).play()
  , ->
    onHover teamMember(this), 'data-name'
    $('video', this).get(0).load()
