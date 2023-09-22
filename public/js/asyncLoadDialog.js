/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*****************************************!*\
  !*** ./resources/js/asyncLoadDialog.js ***!
  \*****************************************/
$(document).ready(function () {
  $('.userDialog').on('click', function (e) {
    e.preventDefault();
    var userId = $(this).find('.userChatId').val();
    var newURL = 'http://chat/dialog/' + userId;
    $.ajax({
      type: 'GET',
      url: newURL,
      success: function success() {
        history.pushState({}, '', newURL);
        console.log('успешно: ' + newURL);
      },
      error: function error(_error) {
        console.error('Ошибка' + _error);
      }
    });
  });
});
/******/ })()
;