    # Тестовое задание "чат"

В данном проекте я попытался реализовать чат без использования WebSocket и Pusher. Реализована авторизация и регистрания новых пользователей, все они автоматически становятся участниками чата, в чате залогиненный пользователь имеет возможность найти нужного ему человека через "поисковик" (поиск происходит асинхронно). Отправка сообщений происходит асинхронно, сообщения улетают в базу данных, вся история чата прогружается так же из базы, асинхронное получение всех сообщений (AJAX запрос к базе с определенным таймингом) пока не удалась. Для того, чтобы получить новые сообщения требуется перезагрузить страницу. 

    # Установка 

1. Склонируйте репозиторий проектаЖ 

    git clone https://github.com/AndreySoroko15/chat_test_task
