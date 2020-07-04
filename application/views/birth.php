<div class="container-fluid">
    <div class="page-head">
        <!-- <a class="btn btn-sm btn-primary" href="" data-toggle="modal" data-target="#create_hospital"><i class="fa fa-plus-square"></i> Add Hospital</a> -->
    </div>

    <div class="row">
        <div class="col-lg-12 col-sm-12">
            <div class="portlet">
                <div class="portlet-heading bg-primary">
                    <h3 class="portlet-title text-white">
                        Birth Records
                    </h3>
                    <div class="portlet-widgets">
                        <a href="javascript:;" data-toggle="reload"><i class="fa fa-refresh"></i></a>
                        <span class="divider"></span>
                        <a data-toggle="collapse" data-parent="#accordion1" href="#bg-info"><i class="fa fa-minus"></i></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div id="bg-info" class="panel-collapse collapse in show">
                    <div class="portlet-body">
                        <div class="row">
                            <div class="col-md-12">
                                <?php
                                if (isset($_SESSION['message'])) {
                                    echo $_SESSION['message'];
                                }
                                ?>
                            </div>
                            <div class="col-md-12">
                                <form method="post" action="<?php echo site_url('births/save_record'); ?>">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Hospital: <label class="text-danger">*</label></label>
                                            <select class="form-control" name="hospital_id" id="hospital_id" required>
                                                <option value="">~~Select Hospital~~</option>
                                                <?php
                                                $getsubcounty = $this->db->get('tbl_hospital')->result();
                                                foreach ($getsubcounty as $c) {
                                                ?>
                                                    <option value="<?php echo $c->id; ?>"><?php echo $c->hospital_name; ?></option>
                                                <?php
                                                }
                                                ?>

                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Surname: <label class="text-danger">*</label></label>
                                            <input class="form-control" placeholder="Surname" name="surname" id="surname" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Other Names: <label class="text-danger">*</label></label>
                                            <input class="form-control" placeholder="Other names" name="other_names" id="other_names">
                                        </div>
                                        <div class="col-md-6">
                                            <label>Date of Birth: <label class="text-danger">*</label></label>
                                            <input type="date" class="form-control" placeholder="Date of birth" name="dob" id="dob" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Place of Birth: <label class="text-danger">*</label></label>
                                            <input class="form-control" placeholder="Place of Birth" name="place_of_birth" id="place_of_birth">
                                        </div>
                                        <div class="col-md-6">
                                            <label>Parent Names: <label class="text-danger">*</label></label>
                                            <input class="form-control" placeholder="Parent Name" name="parent_name" id="parent_name" required>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="modal-footer" style="text-align: left;">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" id="submit_btn" name="submit_btn" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!--end container-->