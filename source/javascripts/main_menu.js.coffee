openMainMenu = ->
  $('.main-menu').removeClass('bouncedOut').addClass('bouncedIn')
  $('html, body').addClass('disable-scroll')

closeMainMenu = ->
  $('.main-menu').removeClass('bouncedIn').addClass('bouncedOut')
  $('html, body').removeClass('disable-scroll')

$ ->
  $('.m-burger-button').on 'click', ->
    openMainMenu()

  $('.m-close-button, .overlay').on 'click', ->
    closeMainMenu()
