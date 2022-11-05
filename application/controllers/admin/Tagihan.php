<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tagihan extends CI_Controller {
    public function index() {
		$data = array(
			'title' => "Tagihan Mahasiswa"
		);
		$this->load->view('admin/tagihan/index', $data);
	}

    public function add() {
		$data = array(
			'title' => "Tambah Tagihan"
		);
		$this->load->view('admin/tagihan/add', $data);
	}

    public function create() {
		$data = array(
			'title' => "MVP Dashboard"
		);
		$this->load->view('admin/tagihan/index', $data);
	}

    public function detail() {
		$data = array(
			'title' => "MVP Dashboard"
		);
		$this->load->view('admin/tagihan/index', $data);
	}

    public function edit() {
		$data = array(
			'title' => "MVP Dashboard"
		);
		$this->load->view('admin/tagihan/index', $data);
	}

    public function update() {
		$data = array(
			'title' => "MVP Dashboard"
		);
		$this->load->view('admin/tagihan/index', $data);
	}

    public function delete() {
		$data = array(
			'title' => "MVP Dashboard"
		);
		$this->load->view('admin/tagihan/index', $data);
	}
}