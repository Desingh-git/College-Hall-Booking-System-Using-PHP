<?php
class User {
    private $_db,
            $_data,
            $_sessionUserName,
            $_sessionUserId,
            $_sessionUserRole,
            $_cookieName,
            $isLoggedIn;

    public function __construct($user = null) {
        $this->_db = DB::getInstance();
        $this->_sessionUserName = 'userName';
        //$this->_cookieName = 'cookie_name';
        $this->_sessionUserId = 'userId';
        $this->_sessionUserRole = 'userRole';


        if(!$user) {
            if(Session::exists($this->_sessionUserId)) {
                $user = Session::get($this->_sessionUserId);

                if($this->find($user)) {
                    $this->isLoggedIn = true;
                } else {
                    //Logout
                }
            }
        } else {
            $this->find($user);
        }
    }

    public function create($fields = array()) {
        if(!$this->_db->insert('users', $fields)) {
            throw new Exception('Sorry, there was a problem creating your account;');
        }
    }

    public function update($fields = array(), $id = null) {

        if(!$id && $this->isLoggedIn()) {
            $id = $this->data()->id;
        }

        if(!$this->_db->update('users', $id, $fields)) {
            throw new Exception('There was a problem updating');
        }
    }

    public function find($user = null) {
        if($user) {
            $field = (is_numeric($user)) ? 'id' : 'username';
            $data = $this->_db->get('users', array($field, '=', $user));

            if($data->count()) {
                $this->_data = $data->first();
                return true;
            }
        }
        return false;
    }

    public function login($username = null, $password = null) {
        if(!$username && !$password && $this->exists()) {
            $this->storeSession();
        } else {
            $user = $this->find($username);
            if ($user) {
                if(Hash::isValidPassword($password, $this->data()->password)) {
                    $this->storeSession();
                    return true;
                }
            }
        }
        return false;
    }

    private function storeSession() {
        if($this->exists()) {
            Session::put($this->_sessionUserName, $this->data()->name);
            Session::put($this->_sessionUserId, $this->data()->id);
            Session::put($this->_sessionUserRole, $this->data()->role);
        }
    }

    public function exists() {
        return (!empty($this->_data)) ? true : false;
    }

    public function logout() {
        //$this->_db->delete('users_session', array('user_id', '=', $this->data()->id));
        Session::delete($this->_sessionUserName);
        Session::delete($this->_sessionUserId);
        Session::delete($this->_sessionUserRole);
        //Cookie::delete($this->_cookieName);
    }

    public function data(){
        return $this->_data;
    }

    public function isLoggedIn() {
        return $this->isLoggedIn;
    }
}