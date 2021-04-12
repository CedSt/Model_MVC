<?php

    class User {

        private $id_users;
        private $user_pseudo;
        private $user_mail;
        private $user_pasword;
        

        public function id_users () {return $this->id_users;}
        public function user_pseudo () {return $this->user_pseudo;}
        public function user_mail () {return $this->user_mail;}
        public function user_pasword () {return $this->user_pasword;} 
        

        public function setId_user ($id) {
            $this->id_user= (int) $id;
        }

        public function setUser_pseudo ($user_pseudo) {
            $this->user_pseudo = $user_pseudo;
        }

        public function setUser_mail ($user_mail) {
            $this->user_mail = $user_mail;
        }

        public function setUser_pasword ($user_pasword) {
            $this->user_pasword = $user_pasword;
        }


        public function hydrate ( array $donnees) {
            foreach ($donnees as $key => $value) {
                $method='set'.ucfirst ($key);
                if (method_exists ($this,$method)) {
                    $this->$method ($value);
                }
            }
        }
    }

    class UserManager{

        // private $bdd;
        // public function setDb (PDO $bdd) {
        //     $this->bdd=$bdd;
        // }
        // public function __construct ($bdd) {
        //     $this->setDb ($bdd);
        // }

        private function dbConnect () {
        $bdd = new PDO ("mysql:host=localhost;dbname=livre; charset=utf8", "root", "", array (PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        return $bdd;
    }


        public function add (User $user) {
            $bd = $this->dbConnect ();
            $req=$bd->prepare ('INSERT INTO users (user_pseudo, user_mail, user_pasword) VALUES (:pseudo, :mail, :pasword)');
            
            $req->bindValue (':pseudo', $user->user_pseudo (),PDO::PARAM_STR);
            $req->bindValue (':mail', $user->user_mail ());
            $req->bindValue (':pasword',$user->user_pasword ());

            $req->execute ();
        }


        public function delete (User $user) {
            $bd = $this->dbConnect ();
            $bd->exec ('DELETE FROM users WHERE id_users='.$user->id_users ());
        }


        public function get ($id) {
            $bd = $this->dbConnect ();
            $id = (int) $id;
            
            $req = $bd->prepare ('SELECT * FROM users WHERE id_users = ?');
            $req->execute (array ($id));
            $donnees=$req->fetch (PDO::FETCH_ASSOC);
            
            $user = new User ();
            $user->hydrate ($donnees);
            return $user;
        }


        public function getAll () {
            $bd = $this->dbConnect ();
            $users = [];

            $req = $bd->query ('SELECT * FROM users');

            while ($donnees = $req->fetch (PDO::FETCH_ASSOC)) {
                $user = new User ();
                $user->hydrate ($donnees);
                $users[] = $user;
            }

            return $users;
        }


        public function update (User $user) {
            $bd = $this->dbConnect ();
            $req = $bd->prepare ('UPDATE users SET user_pseudo = :pseudo, user_mail = :mail, user_pasword = :pasword WHERE id_users = :id_users');

            $req->bindValue (':id_users', $user->id_users (),PDO::PARAM_INT);
            $req->bindValue (':pseudo', $user->user_pseudo (),PDO::PARAM_STR);
            $req->bindValue (':mail', $user->user_mail ());
            $req->bindValue (':pasword',$user->user_pasword ());

            $req->execute ();
        }


        public function login ($pseudo) {
            $bd = $this->dbConnect ();
            $req = $bd->prepare ('SELECT * FROM users WHERE user_pseudo =?');

            $req->execute (array ($pseudo));

            if ($donnees = $req->fetch (PDO::FETCH_ASSOC)) {
                $user = new User ();
                $user->hydrate ($donnees);
                return $user;

            } else {
                return false;
            }
        }
    }
?>