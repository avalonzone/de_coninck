<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except([
            'logout',
        ]);
    }

    // User login form
    public function login() : View
    {
        return view('auth.login');
    }

    // Process authentication from login form
    public function authenticate(Request $request) : RedirectResponse
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if(Auth::attempt($credentials))
        {
            $request->session()->regenerate();
            return redirect()->route('home')
                ->withSuccess('Vous êtes maintenant connecté');
        }

        return back()->withErrors([
            'email' => 'Le mot de passe est incorrecte',
        ])->onlyInput('email');
    }


    public function logout(Request $request) : RedirectResponse
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('login')
            ->withSuccess('You have logged out successfully!');
    }

    public function adminboard() : View
    {
        // To Implement on the wines and messages classes to prevent access
        if(Auth::check())
        {
            return view('auth.adminboard');
        }

        return redirect()->route('login')
            ->withErrors([
            'email' => 'Please login to access the dashboard.',
        ])->onlyInput('email');
    }
}
