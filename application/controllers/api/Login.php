<?php
require APPPATH . 'libraries/REST_Controller.php';
class Login extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->database();

    }
    public function index_post()
    {
        $password = md5($this->post('pass'));
        $username = $this->post('username');
        $count = $this->db->where('username',$username)->get('db_createdaccounts')->num_rows();
        if ($password=='' || $username==''){
            $res = array('error' => false, 'message' => "Fill all the fields");
        }
        else if ($count > 0){
            $check_status=$this->db->where('username',$username)->get('db_createdaccounts')->row('status');
            if($check_status==1){
                $database_password = $this->db->where('username',$username)->get('db_createdaccounts')->row('password');
            if ($database_password === $password){
                $get_Details=$this->db->where('username',$username)->get('db_createdaccounts')->row();
                //$get_id=$this->db->where('username',$username)->get('db_users')->row();
                $res = array(
                    'success' => true, 
                    'message' => "Login successful",
                    'id'=>$get_Details->id,
                    'first_name'=>$get_Details->first_name,
                    'last_name'=>$get_Details->last_name,
                    'national_id'=>$get_Details->national_id,
                    'phone'=>$get_Details->phone,
                    'email'=>$get_Details->email,
                    'post_code'=>$get_Details->post_code,
                    'county'=>$get_Details->country,
                    'passport_photo'=>$get_Details->passport_photo,
                    'username'=>$get_Details->username,
                    'role'=>$get_Details->role,
                    'vehicle_type'=>$get_Details->vehicle_type,
                    'plate_number'=>$get_Details->plate_number,
                    'payment_mode'=>$get_Details->payment_mode,
                    'account_status'=>$get_Details->status,
                    'created_date'=>$get_Details->dated,
                    );
                
            }else{
                $res = array('success' => false, 'message' => "Username and password failed to match");
            }
            }
            else{
               $res = array('success' => false, 'message' => "Sorry!! Your account is inactive. Kindly contact admin for account activation."); 
            }
        }else{

            $res = array('success' => false, 'message' => "No user exists with the provided credentials.");
        }
        $this->response($res, REST_Controller::HTTP_OK);
    }
    public function initiatepasswordrecovery_put(){
        $code=$this->randomToken();
        $email=$this->post('email');
        $u=$this->db->where('email',$email)->get('db_createdaccounts')->row('username');
        $data=array(
            'pass_recovery_token'=>$code
        );
        $qry=$this->db->where('username',$u)->update('db_createdaccounts',$data);
        if($qry){
            $link_sent='
            <table class="table table-bordered">
            <tbody>
            <tr>
            <td>
            <p>Thanks for choosing <strong>eBebewa Platform</strong>. Click the link to reset your password. <a href="http://localhost:86/travels/index.php/web/reset/'.$code.'">CLICK HERE</a></p>
            </td>
            </tr>
            </tbody>
            </table>
            ';
            if ($this->sendEmail($email,$link_sent)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success">Success!! An Email containing instructions for password reset has been sent. Check in spam folder if you do not get it in the inbox</div>');
            redirect('web/login');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger"> Sorry!!! We cannot send Email Now. Try Again Later</div>');
                redirect('web/recover_password');
            }
        }
    }
    //token generator
    function randomToken(){
        $alphabet="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";//
        $pass=array();
        $alphaLength=strlen($alphabet)-1;
        for($i=0; $i<8; $i++){
            $n=rand(0,$alphaLength);
            $pass[]=$alphabet[$n];
        }
        return implode($pass);
    }
}