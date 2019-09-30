$(document).on('turbolinks:load', function() {
    // when a post is clicked, show its full content in a modal window
    $("body").on( "click", ".single-post-card, .single-post-list", function() {
      var posted_name = $(this).find('.posted-name').html();
      var posted_producer = $(this).find('.posted-producer').html();
      var post_country = $(this).find('.posted-country').html();
      var post_synopsis = $(this).find('.posted-synopsis').html();
      $('#movie_name').text(posted_name);
      $('.modal-producer').text(posted_producer);
      $('.modal-synopsis').text(post_synopsis);
      $('.modal-country').text(post_country);
  
    //  $('.myModal').modal('show');
    });
  });