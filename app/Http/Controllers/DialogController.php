<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\User;
use App\Models\Dialog;
use App\Models\Message;

class DialogController extends Controller
{
    private $users = null; 
    private $messages = null;

    public function index($id) {
        $this->users = User::where('id', '!=', auth()->id())->get();

        $currentDialog = Dialog::where('user1_id', '=', auth()->id())
                                ->where('user2_id', '=', $id)
                                ->select('dialog_id')
                                ->first();
        
        if($currentDialog === null) {
            $currentDialog = new Dialog();
            $currentDialog->user1_id = auth()->id();
            $currentDialog->user2_id = $id;
            $currentDialog->save();
        };

        $messagesFor = Message::where('user_id', '=', auth()->id())
                                ->where('dialog_id', '=', $currentDialog->dialog_id)
                                ->orderBy('created_at', 'asc')
                                ->get();

        $secondDialog = Dialog::    where('user1_id', '=', $id)
        ->where('user2_id', '=', auth()->id())
        ->first();
        
        if($secondDialog === null) {
            $secondDialog = new Dialog();
            $secondDialog->user1_id = $id;
            $secondDialog->user2_id = auth()->id();
            $secondDialog->save();
        } 

        $messagesFrom = Message::where('user_id', '=', $id)
                                ->where('dialog_id', '=', $secondDialog->dialog_id)
                                ->orderBy('created_at', 'asc')
                                ->get();

        $userFromDialog = User::where('id', '=', $id)->first();

        $this->messages = $messagesFor->concat($messagesFrom)->sortBy('created_at');

        return view('dialog', [
            'users' => $this->users,
            'currentUser' => auth()->id(),
            'currentDialog' => $currentDialog,
            'messages' => $this->messages,
            'userFromDialog' => $userFromDialog,
        ]);
    }
}
