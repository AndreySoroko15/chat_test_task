$(document).ready(function(){
    $('.search-form').submit(function(e) {
        e.preventDefault();

        let users = $('#search').val();

        // console.log(user);

        $.ajax({
            url: "http://chat/search",
            method: "GET",
            data: {
                search: users,
            },
            dataType: "json",
            success: function(data) {

                $('.all-chats').empty();

                data.forEach(function(user) {
                    $('.all-chats').append(`
                                    <div class="user">
                                        <a href="/dialog/` + user.id + `" class="userDialog">
                                            <h2 class="fs-5">` + user.name + `&nbsp` + user.surname + `</h2>
                                            <input type="hidden" class="userChatId" value="{{ $user->` + user.id + `}}">
                                        </a>
                                    </div>`);
                    
                })

                $('#search').val('');
            }

        })

    })

}) 