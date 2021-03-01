<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function authenticated(Request $request, $user)
    {
        $user = Auth::user();
        $user->token_2fa_expiry = Carbon::now();
        $user->save();
        return redirect()->route('dashboard');
    }
    /*
    protected function authenticated(Request $request, $user)
    {
        return redirect()->route('dashboard');
    }

    
    protected function authenticated(Request $request, $user)
    {
    if ( $user->isAdmin() ) {// do your margic here
        return redirect()->route('dashboard');
    }

    return redirect('/');
    }
    */

    //protected $redirectTo = '/dashboard';

    /**
     * Where to redirect users after login.
     *
     * @var string
     */

    protected function credentials(Request $request)
    {
        return array_merge($request->only($this->username(), 'password'), ['status' => 'active']);
    }

    protected function sendFailedLoginResponse(Request $request)
    {
        throw ValidationException::withMessages([
            $this->username() => [trans('Wrong login details or account not activated!')],
        ]);
    }

}
