<?php
defined('BASEPATH') OR exit('No direct script access allowed');


 
class Terms extends CI_Controller{
	function __construct() {
        parent::__construct();
        
    }
    
    function index(){
        $data['page_title']     = 'Terms & Conditions';
        $data['sliders']        = $this->db->get('slider')->result_array(); 
        $this->load->view('admin/terms', $data);
    }
}

