$ ->
  teamMember = (el) -> $(el).find('.team-member')

  video = (el) -> $('video', el).get(0)

  isSafari = ->
    navigator.userAgent.indexOf('Safari') != -1 &&
    navigator.userAgent.indexOf('Chrome') == -1

  onHover = (el, text) ->
    el.closest('.team-element').children('figcaption').children('.caption').
    text(el.attr(text))

  $('img.team-member').hover ->
    onHover $(this), 'data-position'
  , ->
    onHover $(this), 'data-name'

  $(".media-container:not(.placeholder)").hover ->
    onHover teamMember(this), 'data-position'
    video(this).play()
  , ->
    onHover teamMember(this), 'data-name'
    if isSafari()
      $(video(this)).html($(video(this)).data('innerHtml'))
      $(this).html($(this).html())
    else
      video(this).load()
