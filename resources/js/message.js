$(document).ready(function() {
    $('#form_message').submit(function(e) {
        e.preventDefault();

        let message = $(this).serializeArray();
        let _token = $("#_token").val();

        $.ajax({
            type: 'POST',
            url: 'http://chat/send-message',
            headers: {
                'X-CSRF-TOKEN': _token
            },
            data: message,
            success: function(response) {
                
                $('.chat-body').append(`<div class="message for">
                                            <p>` + response.message.content + `</p>` + 
                                            `<p class="time text-end">` + response.createdTime + `</p>
                                        </div>`);
                $('#form_content').val('');
                console.log("Сообщение отправлено успешно");
                // console.log(response.message);
            },
            error: function(error) {
                console.log('Error:' + error);
            }

        })
    })
})