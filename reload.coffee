reloadjs = ( reload_time=5, key_ctrl=false, url=null) ->
    reload = ->
        if url
            window.location( url)
        else
            window.location.reload()

    startInterval = =>
        if not @interval
            @interval = setInterval( reload, reload_time*1000)

    stopInterval = =>
        if @interval != null
            clearInterval( @interval)
            @interval = null

    keyfunc = ->
        if not e
            e = window.event

        input = e.keyCode

        if input == 80
            stopInterval()
        else if input == 83
            startInterval()

    interval = null
    startInterval()

    if key_ctrl
        if document.addEventListener
            document.addEventListener( "keyup", keyfunc)
        else if document.attachEvent
            document.attachEvent( "onkeyup", keyfunc)
