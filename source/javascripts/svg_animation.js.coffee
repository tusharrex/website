$ ->
  isNonTouchScreen = $('.no-touchevents')

  animateSvg = (el, duration) ->
    return unless(window.location.pathname == '/' \
                  && isNonTouchScreen.length > 0)
    myVivus = new Vivus(el, {
      type: 'scenario',
      duration: duration,
    })

    myVivus.play(2)

  animateDelaySvg = (el, elClass) ->
    svgEl = $(el)
    svgEl.attr({
      'class': elClass,
      'data-ignore': 'false'
    })

  animateSvg('landing-svg', 200)
  animateSvg('line-svg', 70)

  return unless(window.location.pathname == '/' && isNonTouchScreen.length > 0)
  longLines =  $("[data-js='long-lines']")
  leftLines =  $("[data-js='left-lines']")
  rightLines = $("[data-js='right-lines']")
  $window = $(window)
  ownProducts = '#own-products'
  team = '#team'

  leftLines.attr('class', 'bcg-element-yellow-0 scroll-animate-left-svg hidden')
  rightLines.attr('class', 'bcg-element-gray-1 scroll-animate-right-svg hidden')
  longLines.attr('class', 'bcg-landing-3 scroll-animate hidden')

  $window.one 'animateLongLines', ->
    animateDelaySvg('.scroll-animate', 'bcg-landing-3 scroll-animate')
    animateSvg('long-lines-svg', 50)

  $window.one 'animateLeftLines', ->
    animateDelaySvg('.scroll-animate-left-svg',
                    'bcg-element-yellow-0 scroll-animate-left-svg')
    animateSvg('landing-left-svg', 50)

  $window.one 'animateRightLines', ->
    animateDelaySvg('.scroll-animate-right-svg',
                    'bcg-element-gray-1 scroll-animate-right-svg')
    animateSvg('landing-right-svg', 50)

  $window.one 'animateBrowserWindows', ->
    $("[data-js='browser-left']").toggleClass('slide-to-left m-hidden')
    setTimeout ( ->
      $("[data-js='browser-right']").toggleClass('slide-to-right m-hidden')
    ), 350

  $window.on 'scroll':->
    windowHeight = $(window).height()
    windowScrollTop = $(window).scrollTop()
    elPosition = (el) ->
      $(el).position().top - windowHeight * .3
    $window.trigger 'animateLongLines'

    if (windowScrollTop >= elPosition(ownProducts))
      $window.trigger 'animateLeftLines'
      $window.trigger 'animateBrowserWindows'

    if (windowScrollTop >= elPosition(team))
      $window.trigger 'animateRightLines'
