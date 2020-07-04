<?php
require APPPATH . 'libraries/REST_Controller.php';
class   Vaccines extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function index_get($id = 0) //for displaying data
    {
        if (!empty($id)) {
            $data = $this->db->get_where("tbl_vaccines", ['id' => $id])->row_array();
        } else {
            $data = $this->db->get("tbl_vaccines")->result();
        }
        $this->response($data, REST_Controller::HTTP_OK);
    }

    public function registervaccine_post()
    {
        $vaccine_name = $this->post('vaccine_name');
        $period = $this->post('period');
        $description = $this->post('description');

        $query = $this->db->query("select * from tbl_vaccines where vaccine_name='$vaccine_name'");
        if ($query->num_rows() > 0) {
            $response = [
                'status' => FALSE,
                'message' => 'SORRY!! This Vaccine already exist'
            ];
        } else {
            $qry = array(
                'vaccine_name' => $vaccine_name,
                'period' => $period,
                'description' => $description
            );
            $res = $this->db->insert('tbl_vaccines', $qry);
            if ($res) {
                $response = [
                    'status' => TRUE,
                    'status_code' => 201,
                    'message' => 'Vaccine added successfully.'
                ];
            } else {
                $response = [
                    'status' => FALSE,
                    'message' => 'An error occurred. Please try again'
                ];
            }
        }
        $this->response($response, REST_Controller::HTTP_OK);
    }

    public function updatevaccine_put($id)
    {
        $vaccine_name = $this->put('vaccine_name');
        $period = $this->put('period');
        $description = $this->put('description');
        $qry = array(
            'vaccine_name' => $vaccine_name,
            'period' => $period,
            'description' => $description
        );
        $res = $this->db->where('id', $id)->update('tbl_vaccines', $qry);
        if ($res) {
            $response = [
                'status' => TRUE,
                'message' => 'Data successfully updated.'
            ];
        } else {
            $response = [
                'status' => FALSE,
                'message' => 'An error occurred. Kindly try again'
            ];
        }
        $this->response($response, REST_Controller::HTTP_OK);
    }

    public function deletevaccine_delete($id)
    {
        $user = $this->db->where('id', $id)->get('tbl_vaccines')->row();
        if ($user) {
            $this->db->delete('tbl_vaccines', array('id' => $id));
            //$this->db->delete('db_users', array('username' => $user));
            $this->response(['Data deleted successfully.'], REST_Controller::HTTP_OK);
        }
    }
}
