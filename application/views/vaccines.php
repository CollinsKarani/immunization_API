<div class="container-fluid">
    <div class="page-head">
        <a class="btn btn-sm btn-primary" href="" data-toggle="modal" data-target="#create_hospital"><i class="fa fa-plus-square"></i> Add Vaccine</a>
    </div>
    <div class="modal fade" id="create_hospital" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelform" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-plus-square"></i> New Vaccine</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="post" action="<?php echo site_url('vaccines/add'); ?>">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <label>Vaccine Name: <label class="text-danger">*</label></label>
                                <input class="form-control" placeholder="Vaccine Name" name="vaccine_name" id="vaccine_name">
                            </div>
                            <div class="col-md-12">
                                <label>Period: <label class="text-danger">*</label></label>
                                <input class="form-control" placeholder="Period" name="period" id="period">
                            </div>
                            <div class="col-md-12">
                                <label>Description: <label class="text-danger">*</label></label>
                                <input class="form-control" placeholder="Description" name="description" id="description">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" name="submit_btn" id="submit_btn" class="btn btn-primary"><i class="fa fa-save"></i> Save Vaccine</button>
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
                        Ward List
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
                                                <th>Vaccine Name</th>
                                                <th>Period</th>
                                                <th>Description</th>
                                                <th>Action</>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $count = 0;
                                            $getsubcounty = $this->db->get('tbl_vaccines')->result();
                                            foreach ($getsubcounty as $w) {
                                            ?>
                                                <tr>
                                                    <td><?php echo ++$count; ?>.</td>
                                                    <td><?php echo $w->vaccine_name; ?></td>
                                                    <td><?php echo $w->period; ?></td>
                                                    <td><?php echo $w->description; ?></td>
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