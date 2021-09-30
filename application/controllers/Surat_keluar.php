<?php
defined('BASEPATH') or exit('No direct script access allowed');

class surat_keluar extends CI_Controller
{

    public function index()
    {
        // $data['instansi'] = $this->db->query("SELECT * FROM instansi")->result();
        $data['instansi'] = $this->db->query("SELECT * FROM instansi")->result();


        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('surat_keluar/index', $data);
        $this->load->view('templates/footer');
    }

    public function tambah()
    {
        // echo 'oke';
        $data['instansi'] = $this->db->query("SELECT * FROM instansi")->result();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('surat_keluar/tambah', $data);
        $this->load->view('templates/footer');
    }

    public function edit($id)
    {
        // echo 'oke';
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('surat_keluar/edit');
        $this->load->view('templates/footer');
    }

    public function aksi_tambah()
    {
        $id_instansi = $this->input->post('id_instansi');
        // $no_urut = $this->input->post('no_urut');
        // $tanggal_surat = $this->input->post('tanggal_surat');
        // $perihal = $this->input->post('perihal');
        // $sifat_surat = $this->input->post('sifat_surat');
        // $isi_ringkas = $this->input->post('isi_ringkas');
        // $catatan = $this->input->post('catatan');
        // $no_suratmasuk = $this->input->post('no_suratmasuk');
        // $index = $this->input->post('index');
        // $tanggal_teruskan = $this->input->post('tanggal_teruskan');
        // $klasifikasi_surat = $this->input->post('klasifikasi_surat');
        // $status = $this->input->post('status');

        $data = array(
            'id_instansi'    =>  $id_instansi,
            // 'no_urut' =>  $no_urut,
            // // 'tanggal_surat' =>  $tanggal_surat,
            // 'perihal' =>  $perihal,
            // 'sifat_surat'    =>  $sifat_surat,
            // 'isi_ringkas' =>  $isi_ringkas,
            // 'catatan' =>  $catatan,
            // 'no_suratmasuk'    =>  $no_suratmasuk,
            // 'index' =>  $index,
            // // 'tanggal_teruskan' =>  $tanggal_teruskan,
            // 'klasifikasi_surat' =>  $klasifikasi_surat,
            // 'status' =>  0
        );

        // var_dump($data);
        // $this->db->insert('surat_keluar', $data);

        $this->Model_surat_keluar->tambah_surat_keluar($data, 'surat_keluar');
        redirect('surat_keluar/index');
    }
}
