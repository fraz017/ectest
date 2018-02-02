$(document).ready(function(){
    for (var i=1; i<= 100; i++){
        $.ajax({url: "/buzify?number="+i, async: false, success: function(result){
            $('ul.fizzbuzz').append('<li><span>'+ result.number +'</span>: <span>'+ result.buzz +'</span></li>')
        }});
    }
})