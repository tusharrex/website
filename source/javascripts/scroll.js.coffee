$ ->

  $win = $(window)
  url = window.location.href
  urlArr = url.split('/')

  if 'blog' in urlArr
    pageNumber = parseInt(urlArr.pop()) || 1
    numPages = + $('#total_pages').text()
    isLoading = 0
    previousScroll = 0

    if 'scrollRestoration' of history
      history.scrollRestoration = 'manual'

    headerHeight =
      $('.m-header').outerHeight(true) + $('.m-subtitle').outerHeight(true)
    unless pageNumber == 1
      $divToScroll = $('.page').data('page-no',pageNumber)
      window.scrollTo(0, $divToScroll.position().top)

    $win.scroll ->
      scrollPos = $win.scrollTop()

      if scrollPos > previousScroll
        setPageNumber('down')
        adjustUrl()
        if shouldLoadNext(scrollPos)
          isLoading = 1
          loadNext(pageNumber)
      else if scrollPos < previousScroll
        setPageNumber('up')
        adjustUrl()
        if shouldLoadPrev(scrollPos)
          isLoading = 1
          loadPrevious(pageNumber)
      previousScroll = scrollPos

    loadNext = (pageNumber) ->
      loadPage(pageNumber+1, 'down')

    loadPrevious = (pageNumber) ->
      loadPage(pageNumber-1, 'up')

    loadPage = (pageNumber, direction) ->
      $.ajax
        url: '/blog_posts/page/'+ pageNumber
        dataType: 'html'
        success: (html) ->
          addContent(html, direction)
          setPageNumber(direction)
          addContentCallback()

    shouldLoadPrev = (scrollPos) ->
      scrollPos <= headerHeight && isLoading == 0 && pageNumber > 1

    shouldLoadNext = (scrollPos) ->
      scrollPos >= 0.5 * maxHeight() && isLoading == 0 && pageNumber < numPages

    maxHeight = ->
      bottomMargin = $('footer').height() + $('.m-grid-item').height()
      $(document).height() - $win.height() - bottomMargin

    addContent = (data, direction) ->
      if direction == 'up'
        addContentBefore(data)
      else
        addContentAfter(data)

    addContentAfter = (data) ->
      ($('.no-content').first()).before(data)

    addContentBefore = (data) ->
      scrollPos = $win.scrollTop()
      $prev = ($('.page').first()).before(data)
      $(document).scrollTop(scrollPos+$prev.outerHeight())

    addContentCallback = ->
      truncate()
      history.pushState({}, "page #{pageNumber}", pageUrl())
      isLoading = 0

    pageUrl = ->
      return '/blog/' unless pageNumber > 1
      '/blog/page/'+ pageNumber

    setPageNumber = (direction) ->
      if direction == 'up'
        number = parseInt($('.page:in-viewport:first').attr('data-page-no'))
      else
        number = parseInt($('.page:in-viewport:last').attr('data-page-no'))
      if number
        pageNumber = number

    adjustUrl = ->
      if $('#posts').find($('.page:in-viewport'))
        history.pushState({},
          "page #{pageNumber}", pageUrl())

  truncate = ->
    $(".m-grid-item").dotdotdot
      ellipsis: '...',
      wrap: 'word',
      watch: 'true',
