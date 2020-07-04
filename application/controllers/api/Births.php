<?php
require APPPATH . 'libraries/REST_Controller.php';
class   Births extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function index_get($id = 0) //for displaying data
    {
        if (!empty($id)) {
            $data = $this->db->get_where("tbl_births", ['id' => $id])->row_array();
        } else {
            $data = $this->db->get("tbl_births")->result();
        }
        $this->response($data, REST_Controller::HTTP_OK);
    }

    public function registerbirth_post()
    {
        $surname = $this->post('surname');
        $other_names = $this->post('other_names');
        $dob = $this->post('dob');
        $place_of_birth = $this->post('place_of_birth');
        $hospital_id = $this->post('hospital_id');
        $parent_name = $this->post('parent_name');
        /* $query = $this->db->query("select * from tbl_hospital where hospital_name='$hospital_name'");
        if ($query->num_rows() > 0) {
            $response = [
                'status' => FALSE,
                'message' => 'SORRY!! This ward already exist'
            ];
        } else { */
        $qry = array(
            'surname' => $surname,
            'other_names' => $other_names,
            'dob' => $dob,
            'place_of_birth' => $place_of_birth,
            'hospital_id' => $hospital_id,
            'parent_name' => $parent_name
        );
        $res = $this->db->insert('tbl_births', $qry);
        if ($res) {
            $response = [
                'status' => TRUE,
                'status_code' => 201,
                'message' => 'Birth recorded successfully.'
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

    public function updatebirth_put($id)
    {
        $surname = $this->put('surname');
        $other_names = $this->put('other_names');
        $dob = $this->put('dob');
        $place_of_birth = $this->put('place_of_birth');
        $hospital_id = $this->put('hospital_id');
        $parent_name = $this->put('parent_name');
        $qry = array(
            'surname' => $surname,
            'other_names' => $other_names,
            'dob' => $dob,
            'place_of_birth' => $place_of_birth,
            'hospital_id' => $hospital_id,
            'parent_name' => $parent_name
        );
        $res = $this->db->where('id', $id)->update('tbl_births', $qry);
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

    public function deletebirth_delete($id)
    {
        $user = $this->db->where('id', $id)->get('tbl_births')->row();
        if ($user) {
            $this->db->delete('tbl_births', array('id' => $id));
            //$this->db->delete('db_users', array('username' => $user));
            $this->response(['Data deleted successfully.'], REST_Controller::HTTP_OK);
        }
    }
}
