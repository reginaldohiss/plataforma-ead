<?php
class loginController extends controller {

	public function __construct() {
		parent::__construct();
	}
	
	public function index() {
		$array = array();

		if(isset($_POST['email']) && !empty($_POST['email'])) {

			$email = addslashes($_POST['email']);
			$senha = md5($_POST['senha']);

			$alunos = new Alunos();
			if($alunos->fazerLogin($email, $senha)) {

				header("Location: ".BASE);

			}

		}

		$this->loadView("login", $array);
	}

	public function logout() {
		unset($_SESSION['lgaluno']);
		header("Location: ".BASE);
	}

}