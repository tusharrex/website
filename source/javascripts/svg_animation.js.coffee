$ ->
  animateSvg = (el, duration) ->
    return unless window.location.pathname == '/'
    myVivus = new Vivus(el, {
      type: 'scenario',
      duration: duration,
    })

    myVivus.play(2)

  animateLongLines = ->
    svgEl = $('.scroll-animate')
    svgEl.attr({
      'class': 'bcg-landing-3 scroll-animate',
      'data-ignore': 'false'
    })
    animateSvg('long-lines-svg', 50)

  animateSvg('landing-svg', 200)
  animateSvg('line-svg', 70)

  if window.location.pathname == '/'
    $(window).scroll ->
      animateLongLines()
      $(window).off('scroll')
