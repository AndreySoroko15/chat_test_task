<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $users = User::where('id', '!=', auth()->id())->get();

        return view('index', [
            'users' => $users,   
            'currentUser' => auth()->id(),         
        ]);
    }

    public function search(Request $request) {
        $search = $request->search;

        $usersSearch = User::   where('name', 'LIKE', "%{$search}%")
                        ->orWhere('surname', 'LIKE', "%{$search}%")
                        ->orWhere(DB::raw("CONCAT(name, ' ', surname)"), 'LIKE', "%{$search}%")
                        ->orWhere(DB::raw("CONCAT(surname, ' ', name)"), 'LIKE', "%{$search}%") 
                        ->get();

        return response()->json($usersSearch);
    }
    
}
