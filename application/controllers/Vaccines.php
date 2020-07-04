<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Vaccines extends CI_Controller
{
    public function index()
    {
        $this->load->view('header');
        $this->load->view('vaccines');
        $this->load->view('footer');
    }
    public function add()
    {
        if (isset($_POST['submit_btn'])) {
            $data = array(
                'vaccine_name' => $this->input->post('vaccine_name'),
                'period' => $this->input->post('period'),
                'description' => $this->input->post('description')
            );
            $qry = $this->db->insert('tbl_vaccines', $data);
            if ($qry) {
                $this->session->set_flashdata('message', '<div class="alert alert-success"><strong>Vaccine successfully created.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('vaccines');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger"><strong>SORRY!! An error occurred while posting data. Please try again later.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('vaccines');
            }
        }
    }
}
