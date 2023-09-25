<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class MessageController extends Controller
{
    private $createdTime = null;
    private $message = null;
    // private $lastMessage = null;

    public function sendMessage(Request $request) {
        $this->message = $request->all();
        $this->message['created_at'] = Carbon::now();

        Message::create($this->message);
        
        $this->createdTime = $this->message['created_at']->format('H:i');
        
        return response()->json([
            'message' => $this->message,
            'createdTime' => $this->createdTime,
        ]);
    }
}
