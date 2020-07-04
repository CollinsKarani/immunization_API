<div class="container-fluid">
    <div class="page-head">
        <a class="btn btn-sm btn-primary" href="" data-toggle="modal" data-target="#create_hospital"><i class="fa fa-plus-square"></i> Add Sub-county</a>
    </div>
    <div class="modal fade" id="create_hospital" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelform" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-plus-square"></i> New Sub-county</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="post" action="<?php echo site_url('subcounty/add'); ?>">
                    <div class="modal-body">
                        <div class="row">

                            <div class="col-md-12">
                                <label>Sub-county Name: <label class="text-danger">*</label></label>
                                <input class="form-control" placeholder="Sub-county Name" name="subcounty_name" id="subcounty_name">
                            </div>
                            <!-- <div class="col-md-12">
                                <label>Hospital Level: <label class="text-danger">*</label></label>
                                <input class="form-control" placeholder="Hospital Name" name="level" id="level">
                            </div> -->
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" name="submit_btn" id="submit_btn" class="btn btn-primary"><i class="fa fa-save"></i> Save Sub-county</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?php
            if (isset($_SESSION['message'])) {
                echo $_SESSION['message'];
            }
            ?>
        </div>
        <div class="col-lg-12 col-sm-12">
            <div class="portlet">
                <div class="portlet-heading bg-primary">
                    <h3 class="portlet-title text-white">
                        Sub-county List
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
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>Sub-county Name</th>
                                                <th>Action</>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $count = 0;
                                            $getsubcounty = $this->db->get('tbl_subcounty')->result();
                                            foreach ($getsubcounty as $w) {
                                            ?>
                                                <tr>
                                                    <td><?php echo ++$count; ?>.</td>
                                                    <td><?php echo $w->subcounty_name; ?></td>
                                                    <td></td>
                                                </tr>
                                            <?php
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!--end container-->