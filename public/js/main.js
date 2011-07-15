String.prototype.htmlEscape = function(){
    var span = document.createElement('span');
    var txt =  document.createTextNode('');
    span.appendChild(txt);
    txt.data = this;
    return span.innerHTML;
};

$(function(){
    $('input#start_btn').click(omikuji_start);
});

var omikuji_start = function(){
    $.getJSON(omikuji_api, function(res){
        console.log(res);
        var li = $('<li>').append(res.result.htmlEscape() + ' - ' + res.time.htmlEscape());
        $('ul#results').prepend(li);
    });
};