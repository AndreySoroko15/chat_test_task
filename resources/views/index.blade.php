@extends('layouts.app')

@section('content')

<div class="container"> 
    <div class="row">
        <div class="users-panel col-4">
            <h1 class="mb-2 fs-2 fw-bold">Рабочий чат</h1>
            <div class="search-chats">
                <form method="GET" action="{{ route('search') }}" class="search-form">
                        <div class="d-flex">
                            <div class="form-group col-md-10">
                                <input type="text" class="form-control" id="search" name="search" placeholder="Поиск...">
                            </div>
                            <div class="form-group col-md-2">
                                <button type="submit" class="btn btn-dark btn-block"><i class="fa-solid fa-magnifying-glass"></i></button>
                            </div>
                        </div>
                </form>
            </div>

            <div class="all-chats">
                @foreach ($users as $user) 
                    <div class="user">
                        <a href="{{ route('dialog.create', $user->id) }}" class="userDialog">
                    <!-- <a href="/dialog/{{$user->id}}" class="userDialog"> -->
                            <h2 class="fs-5">{{ $user->name }}  {{ $user->surname }}</h2>
                            <input type="hidden" class="userChatId" value="{{ $user->id }}">
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="chat-panel col-8">
            @yield('dialog')
        </div>
    </div>
</div>

@endsection