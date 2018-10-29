<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Mprofil extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		
	}
	public function get_all($limit = 20, $offset = 0, $type = 'result')
	{
		if($this->input->get('user') != '')
			$this->db->where('uploaded', $this->input->get('user'));

		if($this->input->get('status') != '')
			$this->db->where('status', $this->input->get('status'));

		if($this->input->get('query') != '')
			$this->db->like('title', $this->input->get('query'))
					 ->or_like('descriptions', $this->input->get('query'));

		$this->db->order_by('id', 'desc');

		if($type == 'result')
		{
			return $this->db->get('tentangkami', $limit, $offset)->result();
		} else {
			return $this->db->get('tentangkami')->num_rows();
		}
	}

	public function create(){

	if ($this->session->userdata('account_admin')->hak_akses == 'admin') {
			$akses = 'show';
		}
		else {
			$akses = 'hide';
		}

	$data = array(
		'title' => $this->input->post('judul'),
		'descriptions' => $this->input->post('descriptions'),
		'slug' => url_title($this->input->post('judul'), 'dash', TRUE),
		'uploaded' => $this->session->userdata('account_admin')->username,
		'dates' => date('Y-m-d H:i:s'),
		'hits' => 0,
		'status' => $akses
		);

	$this->db->insert('tentangkami', $data);

	if($this->db->affected_rows()){

		$this->template->alert(
			' Data Profil ditambahkan.', 
			array('type' => 'success',
				'icon' => 'check')
			);
	} 

	else {
		$this->template->alert(' 
			Gagal menyimpan data.', 
			array('type' => 'warning',
			'icon' => 'times'));
		}
	}

	public function get($param = 0)
	{

		$this->db->where('id', $param);

		return $this->db->get('tentangkami')->row();
	}

	public function update($param = 0)
	{
		if ($this->session->userdata('account_admin')->hak_akses == 'admin') {
			$akses = 'show';
		}
		else {
			$akses = 'hide';
		}

		$data = array(
		'title' => $this->input->post('judul'),
		'descriptions' => $this->input->post('descriptions'),
		'slug' => url_title($this->input->post('judul'), 'dash', TRUE),
		'uploaded' => $this->session->userdata('account_admin')->username,
		'dates' => date('Y-m-d H:i:s'),
		'status' => $akses
		);
		
		$this->db->update('tentangkami', $data, array('id' => $param));

		if($this->db->affected_rows())
		{
			$this->template->alert(
				' Data Profil berhasil diubah.', 
				array('type' => 'success','icon' => 'check')
			);
		} else {
			$this->template->alert(
				' Tidak ada data yang diubah.', 
				array('type' => 'warning','icon' => 'warning')
			);
		}
	}

	public function delete($param = 0)
	{
		
		$this->db->delete('tentangkami', array('id' => $param));

		if($this->db->affected_rows())
		{
			$this->template->alert(
				' Data Profil berhasil dihapus.', 
				array('type' => 'success','icon' => 'check')
			);
		} else {
			$this->template->alert(
				' Tidak ada data yang dihapus.', 
				array('type' => 'warning','icon' => 'warning')
			);
		}
	}

	public function multiple_delete()
	{
		if( is_array($this->input->post('data')) )
		{
			foreach ($this->input->post('data') as $key => $value) 

				$this->db->delete('tentangkami', array('id' => $value));

			if($this->db->affected_rows())
			{
				$this->template->alert(
					' Data Profil berhasil dihapus.', 
					array('type' => 'success','icon' => 'check')
				);
			} else {
				$this->template->alert(
					' Tidak ada data yang dihapus.', 
					array('type' => 'warning','icon' => 'warning')
				);
			}
		}
	}

	
	public function get_admin()
	{

		return $this->db->get('tb_administrator')->result();
	}

	public function status($param = 0)
	{	

	
		if( self::get($param)->status == 'show')
		{
			$data = array(
				'status' => 'hide',
				'uploaded' => $this->session->userdata('account_admin')->username,
				'dates' => date('Y-m-d H:i:s'),

			);
			$this->db->update('tentangkami', $data, array('id' => $param));
		}
		else {
			$data = array(
				'status' => 'show',
				'uploaded' => $this->session->userdata('account_admin')->username,
				'dates' => date('Y-m-d H:i:s'),

			);
			$this->db->update('tentangkami', $data, array('id' => $param));
		}

		if($this->db->affected_rows())
		{
			$this->template->alert(
				' Status berhasil diubah.', 
				array('type' => 'success','icon' => 'check')
			);
		} else {
			$this->template->alert(
				' Tidak ada data yang diubah.', 
				array('type' => 'warning','icon' => 'warning')
			);
		}
	}
	

}

/* End of file Mpenduduk.php */
/* Location: ./application/models/admin/Mpenduduk.php */