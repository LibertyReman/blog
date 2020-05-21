$(function() {
    //.cover-imgのクリックイベントを登録
    $(".cover-img").on('click', function(){
        $("input[type='file']").click();
    });

    //クリックされたらファイラーを開く
    $("input[type='file']").on('click', function(e){
        e.stopPropagation();
    });

    //画像更新の処理を追加する
    $("input[type='file']").on('change',function(e){
        //console.log($(this))
        var reader = new FileReader();
        reader.onload = function (e) {
            $("#display-img").attr('src', e.target.result);
        }
        reader.readAsDataURL(e.target.files[0]);
    });
});

