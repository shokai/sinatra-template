String.prototype.htmlEscape = ->
    span = document.createElement 'span'
    txt =  document.createTextNode ''
    span.appendChild txt
    txt.data = this
    span.innerHTML


$ ->
    $('input#start_btn').click omikuji_start


omikuji_start = ->
    $.getJSON omikuji_api, (res) ->
        li = $('<li>').append "#{res.result.htmlEscape()} - #{res.time.htmlEscape()}"
        $('ul#results').append li
