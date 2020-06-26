<?php namespace App\Controllers;

class Auth extends BaseController
{
	public function loginForm()
	{
		return view('auths/login');
	}

	public function registerForm()
	{
		return view('auths/register');
	}

	//--------------------------------------------------------------------

}