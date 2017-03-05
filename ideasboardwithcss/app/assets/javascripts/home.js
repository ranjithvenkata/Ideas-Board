/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
*/

(function($){
    $(document).on('turbolinks:load', (function(){
        $('.card-holder').on('ajax:success', '.new_comment', function(e, data, status, xhr){
            console.log(data);
            var $self = $(this);
            var commentHolder = $self.siblings('.comment-holder');
            commentHolder.append(  '<img src="'+data[1]+'" height="30px" weight="30px" alt="no image">'+ '<font color="blue">'+ data[2]+'</font> ' + data[0].comment+'<br>' );
            $('textarea#comment_comment').val('');
        });
        $('.card-holder').on('ajax:error', '.new_comment', function(e, data, status, xhr){

            alert('failure');
        });
        $('.new_post').on('ajax:success', function(e, data, status, xhr){
            console.log(data);

                    var template = $('.card-template');
                    var placeholder = $('.new_post');


                        var card = template.clone();


                        placeholder.append(' Post added ' + '&#10004;');
            window.location.reload();


        });



        $('.new_post').on('ajax:error', function(e, data, status, xhr){

            placeholder.append('<br>'+'<div background-color="red">'+'Please reconnect..'+'</div>');
        })






    })
    );
})(jQuery);