$ ->
  $('.team-member').hover ->
    figcaption = $(this).parent().parent().parent().children().last()
    caption = figcaption.children().first()
    caption.text($(this).attr('data-position'))
    unless $(this).attr('data-member').match /placeholder/
      $(this).attr('src', $(this).attr('data-gif'))
  , ->
    figcaption = $(this).parent().parent().parent().children().last()
    caption = figcaption.children().first()
    caption.text($(this).attr('data-name'))
    unless $(this).attr('data-member').match /placeholder/
      $(this).attr('src', $(this).attr('data-orig'))
