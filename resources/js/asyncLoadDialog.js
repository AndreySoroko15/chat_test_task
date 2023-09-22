$(document).ready(function() {
    $('.userDialog').on('click', function(e) {
        e.preventDefault();

        let userId = $(this).find('.userChatId').val()
        let newURL = 'http://chat/dialog/' + userId;

        $.ajax({
            type: 'GET',
            url: newURL,
            success: function() {
                history.pushState({}, '', newURL);
                console.log('успешно: ' + newURL);
            }, 
            error: function(error) {
                console.error('Ошибка' + error)
            }
        })

    })
})