<?php
require APPPATH . 'libraries/REST_Controller.php';
class   Immunization extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function index_get($id = 0) //for displaying data
    {
        if (!empty($id)) {
            $data = $this->db->get_where("tbl_immunization", ['id' => $id])->row_array();
        } else {
            $data = $this->db->get("tbl_immunization")->result();
        }
        $this->response($data, REST_Controller::HTTP_OK);
    }

    public function registerimmunization_post()
    {
        $child_id = $this->post('child_id');
        $vaccine_id = $this->post('vaccine_id');
        $hospital_id = $this->post('hospital_id');
        $date = $this->post('date');
        /* $query = $this->db->query("select * from tbl_hospital where hospital_name='$hospital_name'");
        if ($query->num_rows() > 0) {
            $response = [
                'status' => FALSE,
                'message' => 'SORRY!! This ward already exist'
            ];
        } else { */
        $qry = array(
            'child_id' => $child_id,
            'vaccine_id' => $vaccine_id,
            'hospital_id' => $hospital_id,
            'dated' => $date
        );
        $res = $this->db->insert('tbl_immunization', $qry);
        if ($res) {
            $response = [
                'status' => TRUE,
                'status_code' => 201,
                'message' => 'Immunization record created successfully.'
            ];
        } else {
            $response = [
                'status' => FALSE,
                'message' => 'An error occurred. Please try again'
            ];
        }
        //}
        $this->response($response, REST_Controller::HTTP_OK);
    }

    public function updateimmunization_put($id)
    {
        $child_id = $this->put('child_id');
        $vaccine_id = $this->put('vaccine_id');
        $hospital_id = $this->put('hospital_id');
        $date = $this->put('date');
        $qry = array(
            'child_id' => $child_id,
            'vaccine_id' => $vaccine_id,
            'hospital_id' => $hospital_id,
            'dated' => $date
        );
        $res = $this->db->where('id', $id)->update('tbl_immunization', $qry);
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

    public function deleteimmunization_delete($id)
    {
        $user = $this->db->where('id', $id)->get('tbl_immunization')->row();
        if ($user) {
            $this->db->delete('tbl_immunization', array('id' => $id));
            //$this->db->delete('db_users', array('username' => $user));
            $this->response(['Data deleted successfully.'], REST_Controller::HTTP_OK);
        }
    }
}
