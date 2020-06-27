<?php namespace App\Controllers;

class Auth extends BaseController
{
	public function index()
	{
		return view('auths/login');
	}

	public function registerForm()
	{
		return view('auths/register');
	}

	public function pizzasList()
	{
		return view('index');
	}
	//--------------------------------------------------------------------

}