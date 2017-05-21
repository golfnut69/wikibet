$(window).resize(function() {
  $('.width').html($(document).width());
});

$(document).on("click", ".list1", function(){
  $list = $(this).closest('.menuList');
  $kids = $list.find('.list2');
    if($list.hasClass('active')){
        $list.removeClass('active');
        $kids.hide();
    }else{
        $list.addClass('active');
        $kids.fadeIn(1000);
    }
});
