const activeReviews = () => {


      $( ".reviews-list" ).click(function() {
        $(".reviews-display").css('display', 'block').delay( 100 );
      });

      $( ".reviews-display" ).click(function() {
        $(".reviews-display").css('display', 'none').delay( 100 );
      });

      $( ".button-eye-step" ).click(function() {
        $(".display-img").css('display', 'block').delay( 100 );
      });

      $( ".display-img" ).click(function() {
        $(".display-img").css('display', 'none').delay( 100 );
      });



}
 export {activeReviews}
