@extends('index')

@section('dialog')
    <div class="chat-header">
        <h3 class="header_user_name fs-6 fw-bolder pt-3 pb-3 ps-4">{{ $userFromDialog->name }} {{ $userFromDialog->surname }}</h3>
    </div>
    <div class="chat-body">
        @foreach($messages as $message)
            @if($message->user_id === $currentUser)
                <div class="message for">
                    <p>{{ $message->content }}</p>
                    <p class="time text-end">
                        {{ \Carbon\Carbon::parse($message->created_at)->format('H:i') }}
                    </p>
                </div>
            @else
                <div class="message from">
                    <p>{{ $message->content }}</p>
                    <p class="time text-start">
                        {{ \Carbon\Carbon::parse($message->created_at)->format('H:i') }}
                    </p>
                </div>
            @endif
        @endforeach
    </div>
    <div class="message-form">
        <form   action="{{ route('message') }}" method="post" enctype="multipart/form-data" class="d-flex"
                method="POST"  id="form_message">
            @csrf
                <div class="form-group form_message_block">
                    <input type="textarea" id="form_content" name="content" class="form-control" placeholder="Введите свое сообщение здесь...">
                    <input type="hidden" id="form_user_id" name="user_id" class="form-control" value="{{ $currentUser }}">
                    <input type="hidden" id="form_dialog_id" name="dialog_id" class="form-control" value="{{ $currentDialog->dialog_id }}">
                    <input type="hidden" name="_token" id="_token" value="{{ csrf_token() }}">
                </div>

                <div class="form-group form_button_block">
                    <input type="submit" class="btn btn-primary btn-submit" value="Отправить">
                </div>
        </form>
    </div>
@endsection