$ ->

  animateSvg = (el, duration) ->
    try
      myVivus = new Vivus(el, {
        type: 'scenario',
        duration: duration,
      })

      myVivus.play(2)
    catch e
      console.log("Animation failed")

  animateLongLines = ->
    svgEl = $('.scroll-animate')
    svgEl.attr({
      'class': 'bcg-landing-3 scroll-animate',
      'data-ignore': 'false'
    })
    animateSvg('long-lines-svg', 50)

  # TODO(anyone) Do not run landing animation not on landing page
  animateSvg('landing-svg', 200)
  animateSvg('line-svg', 70)

  $(window).scroll ->
    animateLongLines()
    $(window).off('scroll')
