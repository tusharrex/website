openMainMenu = ->
  $('.main-menu').addClass('opened')

closeMainMenu = ->
  $('.main-menu').removeClass('opened')

$ ->
  doc = document.getElementsByTagName('body')[0]
  cqm = new Hammer(doc, cssProps: userSelect: true)

  menuNav = document.getElementsByClassName('main-menu__nav')[0]
  menu = new Hammer(menuNav)

  $('.main-menu__button').click ->
    openMainMenu()

  $('.main-menu__nav__button').click ->
    closeMainMenu()

  cqm.on 'swipeleft', openMainMenu

  menu.on 'swiperight', closeMainMenu
