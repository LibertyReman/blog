$(function() {
    $(".cover-img").on('click', function(){
        $("input[type='file']").on('click', function(e){
            e.stopPropagation();
        });
        $("input[type='file']").click();
        $("input[type='file']").on('change',function(){
        });
    });
    return
});





