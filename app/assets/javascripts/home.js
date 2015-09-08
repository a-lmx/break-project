$(function() {
  $("#select-language").submit(function(event) {
    event.preventDefault();

    var language = $("#language").val();

    var url = "/" + language;

  //   if (url) {
  //     $.ajax(url, {
  //       type: "GET",
  //       success: function(data, textStatus, jqHXR) {
  //         if (jqHXR.status == 204) {
  //           apologize();
  //         } else {
  //           var songs = data;
  //           displayMessage(message);
  //           displaySongs(songs);
  //         }
  //       }
  //     });
  //   } else { // no search term entered
  //     apologize();
  //   }
  //   clearTextField(); // after the results have rendered
  // });

  // function connectApiCalltoButton(className, message) {
  //   var element = "form." + className;
  //   var url = "/" + className;

  //   $(element).submit(function(event) {
  //   event.preventDefault();

  //   clearTextField(); // as soon as the button is clicked
  //   removeOldResults();

  //   $.ajax(url, {
  //       type: "GET",
  //       success: function(data) {
  //         var songs = data;
  //         displayMessage(message);
  //         displaySongs(songs);
  //       }
  //     });
  // });
  // }

  // connectApiCalltoButton("popular", "Follow the herd, listen to these jams:");

});
