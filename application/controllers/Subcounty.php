<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Subcounty extends CI_Controller
{
    public function index()
    {
        $this->load->view('header');
        $this->load->view('subcounty');
        $this->load->view('footer');
    }
    public function add()
    {
        if (isset($_POST['submit_btn'])) {
            $data = array(
                'subcounty_name' => $this->input->post('subcounty_name'),
            );
            $qry = $this->db->insert('tbl_subcounty', $data);
            if ($qry) {
                $this->session->set_flashdata('message', '<div class="alert alert-success"><strong>Sub-county successfully created.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('subcounty');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger"><strong>SORRY!! An error occurred while posting data. Please try again later.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('subcounty');
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
