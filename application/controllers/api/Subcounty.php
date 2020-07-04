<?php
require APPPATH . 'libraries/REST_Controller.php';
class   Subcounty extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function index_get($id = 0) //for displaying data
    {
        if (!empty($id)) {
            $data = $this->db->get_where("tbl_subcounty", ['id' => $id])->row_array();
        } else {
            $data = $this->db->get("tbl_subcounty")->result();
        }
        $this->response($data, REST_Controller::HTTP_OK);
    }

    public function registersubcounty_post()
    {
        $name = $this->post('subcounty_name');
        $query = $this->db->query("select * from tbl_subcounty where subcounty_name='$name'");
        if ($query->num_rows() > 0) {
            $response = [
                'status' => FALSE,
                'message' => 'SORRY!! This subcounty already exist'
            ];
        } else {
            $qry = array(
                'subcounty_name' => $name
            );
            $res = $this->db->insert('tbl_subcounty', $qry);
            if ($res) {
                $response = [
                    'status' => TRUE,
                    'status_code' => 201,
                    'message' => 'Sub county created successfully.'
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
    function randomPassword()
    { //generates random activation code
        $alphabet = "0123456789"; //abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ
        $pass = array();
        $alphaLength = strlen($alphabet) - 1;
        for ($i = 0; $i < 5; $i++) {
            $n = rand(0, $alphaLength);
            $pass[] = $alphabet[$n];
        }
        return implode($pass);
    }

    public function updateSubcounty_put($id)
    {
        $qry = array(
            'subcounty_name' => $this->put('subcounty_name'),
        );
        $res = $this->db->where('id', $id)->update('tbl_subcounty', $qry);
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

    public function deleteSubcounty_delete($id)
    {
        $user = $this->db->where('id', $id)->get('tbl_subcounty')->row();
        if ($user) {
            $this->db->delete('tbl_subcounty', array('id' => $id));
            //$this->db->delete('db_users', array('username' => $user));
            $this->response(['Data deleted successfully.'], REST_Controller::HTTP_OK);
        }
    }
}
