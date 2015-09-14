$(function() {
  $("#select-language").submit(function(event) {
    event.preventDefault();

    var language = $("#language").val();

    var url = "/" + language;
});
