const activeReviews = () => {


      $( ".reviews-list" ).click(function() {
        $(".reviews-display").css('display', 'block').delay( 100 );
      });

      $( ".reviews-display" ).click(function() {
        $(".reviews-display").css('display', 'none').delay( 100 );
      });


}
 export {activeReviews}
