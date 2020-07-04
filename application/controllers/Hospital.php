<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Hospital extends CI_Controller
{
    public function index()
    {
        $this->load->view('header');
        $this->load->view('hospital');
        $this->load->view('footer');
    }
    public function add()
    {
        if (isset($_POST['submit_btn'])) {
            $data = array(
                'subcounty_id' => $this->input->post('subcounty_id'),
                'ward_id' => $this->input->post('ward_id'),
                'hospital_name' => $this->input->post('hospital_name'),
                'level' => $this->input->post('level'),
            );
            $qry = $this->db->insert('tbl_hospital', $data);
            if ($qry) {
                $this->session->set_flashdata('message', '<div class="alert alert-success"><strong>hOSPITAL successfully created.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('hospital');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger"><strong>SORRY!! An error occurred while posting data. Please try again later.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('hospital');
            }
        }
    }
}
