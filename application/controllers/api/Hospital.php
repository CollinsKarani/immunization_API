<?php
require APPPATH . 'libraries/REST_Controller.php';
class   Hospital extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function index_get($id = 0) //for displaying data
    {
        if (!empty($id)) {
            $data = $this->db->get_where("tbl_hospital", ['id' => $id])->row_array();
        } else {
            $data = $this->db->get("tbl_hospital")->result();
        }
        $this->response($data, REST_Controller::HTTP_OK);
    }

    public function registerhospital_post()
    {
        $subcounty_id = $this->post('subcounty_id');
        $ward_id = $this->post('ward_id');
        $hospital_name = $this->post('hospital_name');
        $level = $this->post('level');
        /* $query = $this->db->query("select * from tbl_hospital where hospital_name='$hospital_name'");
        if ($query->num_rows() > 0) {
            $response = [
                'status' => FALSE,
                'message' => 'SORRY!! This ward already exist'
            ];
        } else { */
        $qry = array(
            'subcounty_id' => $subcounty_id,
            'ward_id' => $ward_id,
            'hospital_name' => $hospital_name,
            'level' => $level
        );
        $res = $this->db->insert('tbl_hospital', $qry);
        if ($res) {
            $response = [
                'status' => TRUE,
                'status_code' => 201,
                'message' => 'Hospital created successfully.'
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

    public function updatehospital_put($id)
    {
        $subcounty_id = $this->put('subcounty_id');
        $ward_id = $this->put('ward_id');
        $hospital_name = $this->put('hospital_name');
        $level = $this->put('level');
        $qry = array(
            'subcounty_id' => $subcounty_id,
            'ward_id' => $ward_id,
            'hospital_name' => $hospital_name,
            'level' => $level
        );
        $res = $this->db->where('id', $id)->update('tbl_hospital', $qry);
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

    public function deletehospital_delete($id)
    {
        $user = $this->db->where('id', $id)->get('tbl_hospital')->row();
        if ($user) {
            $this->db->delete('tbl_hospital', array('id' => $id));
            //$this->db->delete('db_users', array('username' => $user));
            $this->response(['Data deleted successfully.'], REST_Controller::HTTP_OK);
        }
    }
}
