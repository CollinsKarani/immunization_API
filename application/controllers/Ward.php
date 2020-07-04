<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ward extends CI_Controller
{
    public function index()
    {
        $this->load->view('header');
        $this->load->view('ward');
        $this->load->view('footer');
    }

    public function add()
    {
        if (isset($_POST['submit_btn'])) {
            $data = array(
                'subcounty_id' => $this->input->post('subcounty_id'),
                'ward_name' => $this->input->post('ward_name')
            );
            $qry = $this->db->insert('tbl_ward', $data);
            if ($qry) {
                $this->session->set_flashdata('message', '<div class="alert alert-success"><strong>Ward successfully created.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('ward');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger"><strong>SORRY!! An error occurred while posting data. Please try again later.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('ward');
            }
        }
    }
    /* public function add()
    {
        $this->load->view('header');
        $this->load->view('hospital-view');
        $this->load->view('footer');
    } */
}
