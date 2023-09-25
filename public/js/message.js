/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*********************************!*\
  !*** ./resources/js/message.js ***!
  \*********************************/
$(document).ready(function () {
  $('#form_message').submit(function (e) {
    e.preventDefault();
    var message = $(this).serializeArray();
    var _token = $("#_token").val();

    // console.log(message);
    $.ajax({
      type: 'POST',
      url: 'http://chat/send-message',
      headers: {
        'X-CSRF-TOKEN': _token
      },
      data: message,
      success: function success(response) {
        $('.chat-body').append("<div class=\"message for\">\n                                            <p>" + response.message.content + "</p>" + "<p class=\"time text-end\">" + response.createdTime + "</p>\n                                        </div>");
        $('#form_content').val('');
        console.log("Сообщение отправлено успешно");
        // console.log(response.message);
      },

      error: function error(_error) {
        // console.log('Error:' + error);
      }
    });
  });
});
/******/ })()
;