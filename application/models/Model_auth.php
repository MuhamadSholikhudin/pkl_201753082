<?php

class Model_auth extends CI_Model{

    public function cek_login(){
        $username = set_value('username');
        $password = set_value('password');

        $result = $this->db->where('username', $username)
                            ->where('password', $password)
                            // ->where('status', 'Aktif')
                            
                            ->limit(1)
                            ->get('pegawai');
        if($result->num_rows() > 0){
            return $result->row();
        }else{
            return array();
        }
    }


    public function cek_login_pemilik()
    {
        $username = set_value('username');
        $password = set_value('password');

        $result = $this->db->where('username', $username)
            ->where('password', $password)
            ->where('status', 'Aktif')
            ->where('hakakses', 'hakakses')
            ->limit(1)
            ->get('pengguna');
        if ($result->num_rows() > 0) {
            return $result->row();
        } else {
            return array();
        }
    }
}