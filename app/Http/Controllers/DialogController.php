<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\User;
use App\Models\Dialog;
use App\Models\Message;

class DialogController extends Controller
{
    private $users = null; 
    private $messages = null;
    private $currentDialog = null;
    private $secondDialog = null;


    public function index($id) {
        $this->users = User::where('id', '!=', auth()->id())->get();

        if($this->currentDialog === null) {
            $dialog1 = new Dialog();
            $dialog1->user1_id = auth()->id();
            $dialog1->user2_id = $id;
            $dialog1->save();

            $this->currentDialog = $dialog1;
        };

        $this->currentDialog = Dialog::where('user1_id', '=', auth()->id())
                                ->where('user2_id', '=', $id)
                                ->select('dialog_id')
                                ->first();
        

        $messagesFor = Message::where('user_id', '=', auth()->id())
                                ->where('dialog_id', '=', $this->currentDialog->dialog_id)
                                ->orderBy('created_at', 'asc')
                                ->get();

                
        if($this->secondDialog === null) {
            $dialog2 = new Dialog();
            $dialog2->user1_id = $id;
            $dialog2->user2_id = auth()->id();
            $dialog2->save();

            $this->secondDialog = $dialog2;
        } 

        $this->secondDialog = Dialog::  where('user1_id', '=', $id)
                                ->where('user2_id', '=', auth()->id())
                                ->first();

        $messagesFrom = Message::where('user_id', '=', $id)
                                ->where('dialog_id', '=', $this->secondDialog->dialog_id)
                                ->orderBy('created_at', 'asc')
                                ->get();

        $userFromDialog = User::where('id', '=', $id)->first();

        $this->messages = $messagesFor->concat($messagesFrom)->sortBy('created_at');

        return view('dialog', [
            'users' => $this->users,
            'currentUser' => auth()->id(),
            'currentDialog' => $this->currentDialog,
            'messages' => $this->messages,
            'userFromDialog' => $userFromDialog,
        ]);
    }
}
