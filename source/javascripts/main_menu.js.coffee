openMainMenu = ->
  $('.main-menu').removeClass('bouncedOut').addClass('bouncedIn')

closeMainMenu = ->
  $('.main-menu').removeClass('bouncedIn').addClass('bouncedOut')

$ ->
  doc = document.getElementsByTagName('body')[0]
  cqm = new Hammer(doc, cssProps: userSelect: true)

  menuNav = document.getElementsByClassName('main-menu')[0]
  menu = new Hammer(menuNav)

  $('.m-burger-button').click ->
    openMainMenu()

  $('.main-menu-close-button, .overlay').click ->
    closeMainMenu()

  cqm.on 'swipeleft', openMainMenu

  menu.on 'swiperight', closeMainMenu
