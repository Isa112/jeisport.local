
$(window).load(function(){
   $('.flexslider').flexslider({
     animation: "slide",
     start: function(slider){
      $('#window').css({'display':'none','left':0});
       $('body').removeClass('loading');}
   });
 });



(function(cash) {
  $(window).load(function() {

   $('.modal-open').on('click',function(){
       var modal_id = $(this).data('modal-id');
       $(modal_id).fadeIn();
       return false;
   });
   $('.modal-wrapper .bg, .modal-wrapper .close-modal').on('click',function(){
       $(this).parents('.modal-wrapper').fadeOut();
       return false;
   });

  });
})(jQuery);