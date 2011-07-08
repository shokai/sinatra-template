$(function(){
    $('input#start_btn').click(omikuji_start);
});

var omikuji_start = function(){
    $.getJSON(omikuji_api, function(res){
        console.log(res);
        var li = $('<li>').append(res.result + ' - ' + res.time);
        $('ul#results').prepend(li);
    });
};