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
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>Child Name</th>
                                                <th>Date of Birth</th>
                                                <th>Place of Birth</th>
                                                <th>Parent Names</th>
                                                <th>Hospital</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $count = 0;
                                            $getdata = $this->db->select('a.*,b.hospital_name')->from('tbl_births as a')->join('tbl_hospital as b', 'a.hospital_id=b.id')->get()->result();
                                            foreach ($getdata as $d) {
                                            ?>
                                                <tr>
                                                    <td><?php echo ++$count; ?>.</td>
                                                    <td><?php echo $d->surname . ' ' . $d->other_names; ?></td>
                                                    <td><?php echo $d->dob; ?></td>
                                                    <td><?php echo $d->place_of_birth; ?></td>
                                                    <td><?php echo $d->parent_name; ?></td>
                                                    <td><?php echo $d->hospital_name; ?></td>
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