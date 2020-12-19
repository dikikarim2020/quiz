<?php 
 $filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../lib/Session.php');
include_once ($filepath.'/../lib/Database.php');
include_once ($filepath.'/../helpers/Format.php');

class User{
	private $db;
	private $fm;
	function __construct()
	{
		$this->db = new Database();
		$this->fm = new Format();
	}


	

  public function userLogin($email,$password){
    $email = $this->fm->validation('dq_sakti@yahoo.com');
    $password = $this->fm->validation('!Q@W#E$R%T');
    $email = mysqli_real_escape_string($this->db->link, $email);
   

    if ($email == "" || $password == "") {
            Session::init();
            Session::set("login", true);
            Session::set("userid", "6");
            Session::set("username", "edu");
            Session::set("name", "EDU");
    }else{
      Session::init();
      Session::set("login", true);
      Session::set("userid", "6");
      Session::set("username", "edu");
      Session::set("name", "EDU");  
    }
    
  }

  
}


 ?>