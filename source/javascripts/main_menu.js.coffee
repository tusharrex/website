openMainMenu = ->
  $('.main-menu__nav').addClass('opened')

closeMainMenu = ->
  $('.main-menu__nav').removeClass('opened')


$ ->
  doc = document.getElementsByTagName('body')[0]
  cqm = new Hammer(doc)

  menuNav = document.getElementsByClassName('main-menu__nav')[0]
  menu = new Hammer(menuNav)

  $('.main-menu__button').click ->
    openMainMenu()

  $('.main-menu__nav__button').click ->
    closeMainMenu()

  cqm.on 'swipeleft', openMainMenu

  menu.on 'swiperight', closeMainMenu
