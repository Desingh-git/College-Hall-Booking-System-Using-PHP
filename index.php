   <?php
   require_once 'config/init.php';
   $user = new User(); 
   if($user->isLoggedIn()) {
    include('./home.php'); 
   }else {
    Redirect::to('./login.php');
   }
   ?>
