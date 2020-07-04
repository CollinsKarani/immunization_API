<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Births extends CI_Controller
{
    public function index()
    {
        $this->load->view('header');
        $this->load->view('birth-view');
        $this->load->view('footer');
    }
    public function add()
    {
        $this->load->view('header');
        $this->load->view('birth');
        $this->load->view('footer');
    }
    public function save_record()
    {
        if (isset($_POST['submit_btn'])) {
            $data = array(
                'hospital_id' => $this->input->post('hospital_id'),
                'surname' => $this->input->post('surname'),
                'other_names' => $this->input->post('other_names'),
                'dob' => $this->input->post('dob'),
                'place_of_birth' => $this->input->post('place_of_birth'),
                'parent_name' => $this->input->post('parent_name'),
            );
            $qry = $this->db->insert('tbl_births', $data);
            if ($qry) {
                $this->session->set_flashdata('message', '<div class="alert alert-success"><strong>Record successfully saved.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('ward');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger"><strong>SORRY!! An error occurred while posting data. Please try again later.</strong><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                redirect('ward');
            }
        }
    }
}
