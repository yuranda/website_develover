<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Mevents extends CI_Model 
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

		if($this->input->get('kategori') != '')
			$this->db->where('kategori', $this->input->get('kategori'));

		if($this->input->get('query') != '')
			$this->db->like('title', $this->input->get('query'))
					 ->or_like('short_descriptions', $this->input->get('query'));

		$this->db->order_by('id', 'desc');

		if($type == 'result')
		{
			return $this->db->get('events', $limit, $offset)->result();
		} else {
			return $this->db->get('events')->num_rows();
		}
	}

	public function create(){

	if ($this->session->userdata('account_admin')->hak_akses == 'admin') {
			$akses = 'show';
		}
		else {
			$akses = 'hide';
		}

	if (isset($_FILES['foto'])) 
	   {
	     	$create_tgl = date('Y-m-d H:i:s'); 
		    $this->load->library('upload');
		    $nmfile = date('YmdHis'); 
		    $config['upload_path'] = './assets/images/news/';
		    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; 
		    $config['max_size'] = '40480';
		    $config['max_width']  = '12880';
		    $config['max_height']  = '7680';
		    $config['file_name'] = $nmfile; 
	     	$this->upload->initialize($config);
	     	if ($this->upload->do_upload('foto'))
			{ 
		       	$foto = $this->upload->data();
	     	}
        }

	$data = array(
	   	'title' => $this->input->post('title'),
	    'short_descriptions'=> $this->input->post('short_descriptions'),
	    'descriptions'=> $this->input->post('descriptions'),
	    'kategori'=> $this->input->post('kategori'),
	    'tags'=> implode(",", $this->input->post('tags')),
	   	'tgl_events'=> $this->input->post('tgl_events'),
	   	'foto' => $foto['file_name'],
		'uploaded' => $this->session->userdata('account_admin')->username,
		'dates' => date('Y-m-d H:i:s'),
		'status' => $akses,
		'slug' => url_title($this->input->post('title'), 'dash', TRUE),
		'hits' =>0,
		);
	$this->db->insert('events', $data);

	if($this->db->affected_rows()){

		$this->template->alert(
			' Data Events ditambahkan.', 
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

		return $this->db->get('events')->row();
	}

	public function update($param = 0)
	{
		if ($this->session->userdata('account_admin')->hak_akses == 'admin') {
			$akses = 'show';
		}
		else {
			$akses = 'hide';
		}

	if (isset($_FILES['foto'])) 
	   {
	     	$create_tgl = date('Y-m-d H:i:s'); 
		    $this->load->library('upload');
		    $nmfile = date('YmdHis'); 
		    $config['upload_path'] = './assets/images/news/';
		    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; 
		    $config['max_size'] = '40480';
		    $config['max_width']  = '12880';
		    $config['max_height']  = '7680';
		    $config['file_name'] = $nmfile; 
	     	$this->upload->initialize($config);
	     	if ($this->upload->do_upload('foto'))
			{ 
		       	$foto = $this->upload->data();
	     	}
        }

	$data = array(
	   	'title' => $this->input->post('title'),
	    'short_descriptions'=> $this->input->post('short_descriptions'),
	    'descriptions'=> $this->input->post('descriptions'),
	    'kategori'=> $this->input->post('kategori'),
	    'tags'=> implode(",", $this->input->post('tags')),
	   	'tgl_events'=> $this->input->post('tgl_events'),
	   	'foto' => $foto['file_name'],
		'uploaded' => $this->session->userdata('account_admin')->username,
		'dates' => date('Y-m-d H:i:s'),
		'status' => $akses,
		'slug' => url_title($this->input->post('title'), 'dash', TRUE),
		);

		@unlink("assets/images/news/{$this->get($param)->foto}");
		
		$this->db->update('events', $data, array('id' => $param));

		if($this->db->affected_rows())
		{
			$this->template->alert(
				' Data Events berhasil diubah.', 
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
		@unlink("assets/images/news/{$this->get($param)->foto}");
		
		$this->db->delete('events', array('id' => $param));

		if($this->db->affected_rows())
		{
			$this->template->alert(
				' Data Events berhasil dihapus.', 
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

				@unlink("assets/images/news/{$this->get($value)->foto}"); 

				$this->db->delete('events', array('id' => $value));

			if($this->db->affected_rows())
			{
				$this->template->alert(
					' Data Events berhasil dihapus.', 
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
			$this->db->update('events', $data, array('id' => $param));
		}
		else {
			$data = array(
				'status' => 'show',
				'uploaded' => $this->session->userdata('account_admin')->username,
				'dates' => date('Y-m-d H:i:s'),

			);
			$this->db->update('events', $data, array('id' => $param));
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