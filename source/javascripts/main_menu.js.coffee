$ ->
  $('.main-menu__button').click ->
    $('.main-menu__nav').addClass('opened')

  $('.main-menu__nav__button').click ->
    $('.main-menu__nav').removeClass('opened')
