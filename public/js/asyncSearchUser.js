/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*****************************************!*\
  !*** ./resources/js/asyncSearchUser.js ***!
  \*****************************************/
$(document).ready(function () {
  $('.search-form').submit(function (e) {
    e.preventDefault();
    var users = $('#search').val();

    // console.log(user);

    $.ajax({
      url: "http://chat/search",
      method: "GET",
      data: {
        search: users
      },
      dataType: "json",
      success: function success(data) {
        $('.all-chats').empty();
        data.forEach(function (user) {
          $('.all-chats').append("\n                                    <div class=\"user\">\n                                        <a href=\"/dialog/" + user.id + "\" class=\"userDialog\">\n                                            <h2 class=\"fs-5\">" + user.name + "&nbsp" + user.surname + "</h2>\n                                            <input type=\"hidden\" class=\"userChatId\" value=\"{{ $user->" + user.id + "}}\">\n                                        </a>\n                                    </div>");
        });
        $('#search').val('');
      }
    });
  });
});
/******/ })()
;