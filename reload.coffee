reloadjs = ( reload_time=5, url=null) ->
    reload = ->
        if url
            window.location( url)
        else
            window.location.reload()
    setInterval( reload, reload_time*1000)
