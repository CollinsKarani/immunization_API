<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mannat Themes">
    <meta name="keyword" content="">

    <title>System</title>

    <!-- Theme icon -->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/favicon.ico">

    <link href="<?php echo base_url(); ?>assets/plugins/morris-chart/morris.css" rel="stylesheet">
    <!-- Theme Css -->
    <link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/slidebars.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/icons.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/menu.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
</head>

<body class="sticky-header">
    <section>
        <!-- sidebar left start-->
        <div class="sidebar-left">
            <div class="sidebar-left-info">

                <div class="user-box">
                    <div class="d-flex justify-content-center">
                        <img src="<?php echo base_url(); ?>assets/images/users/avatar-1.j" alt="" class="img-fluid rounded-circle">
                    </div>
                    <div class="text-center text-white mt-2">
                        <h6>Barus Kipruto Mike</h6>
                        <p class="text-muted m-0">CHRIO</p>
                    </div>
                </div>

                <!--sidebar nav start-->
                <ul class="side-navigation">
                    <!-- <li>
                        <h3 class="navigation-title">Navigation</h3>
                    </li> -->
                    <li class="active">
                        <a href="index.html"><i class="mdi mdi-gauge"></i> <span>Dashboard</span></a>
                    </li>
                    <li><a href="<?php echo site_url('hospital'); ?>"><i class="fa fa-home"></i> Hospital</a></li>
                    <li><a href="<?php echo site_url('subcounty'); ?>"><i class="fa fa-list"></i> Sub County</a></li>
                    <li><a href="<?php echo site_url('ward'); ?>"><i class="fa fa-list"></i> Ward</a></li>
                    <li><a href="<?php echo site_url('vaccines'); ?>"><i class="fa fa-list"></i> Vaccines</a></li>
                    <li class="menu-list"><a href=""><i class="fa fa-list"></i> <span>Birth Records</span></a>
                        <ul class="child-list">
                            <li><a href="<?php echo site_url('births/add'); ?>"> Record Birth</a></li>
                            <li><a href="<?php echo site_url('births'); ?>"> Birth Records List</a></li>
                        </ul>
                    </li>
                    <li><a href="<?php echo site_url('immunization'); ?>"><i class="fa fa-list"></i> Immunization</a></li>
                    <!-- <li class="menu-list"><a href=""><i class="fa fa-home"></i> <span>Hospitals</span></a>
                        <ul class="child-list">
                            <li><a href="<?php //echo site_url('hospital'); 
                                            ?>"> Add Hospital</a></li>
                            <li><a href="<?php //echo site_url('hospital'); 
                                            ?>"> Hospital List</a></li>
                        </ul>
                    </li> -->
                    <!-- <li class="menu-list"><a href=""><i class="fa fa-list"></i> <span>Sub County</span></a>
                        <ul class="child-list">
                            <li><a href=""> Add Sub-County</a></li>
                            <li><a href=""> Sub-County List</a></li>
                        </ul>
                    </li> -->
                    <!-- <li class="menu-list"><a href=""><i class="fa fa-list"></i> <span>Wards</span></a>
                        <ul class="child-list">
                            <li><a href=""> Add Ward</a></li>
                            <li><a href=""> Ward List</a></li>
                        </ul>
                    </li> -->
                    <!-- <li class="menu-list"><a href=""><i class="fa fa-list"></i> <span>Vaccines</span></a>
                        <ul class="child-list">
                            <li><a href=""> Add Vaccine</a></li>
                            <li><a href=""> Vaccines List</a></li>
                        </ul>
                    </li> -->

                    <!-- <li class="menu-list"><a href=""><i class="fa fa-list"></i> <span>Immunization Records</span></a>
                        <ul class="child-list">
                            <li><a href=""> New Record</a></li>
                            <li><a href=""> Immunization Records List</a></li>
                        </ul>
                    </li> -->
                </ul>
                <!--sidebar nav end-->
            </div>
        </div><!-- sidebar left end-->
        <!-- body content start-->
        <div class="body-content">
            <!-- header section start-->
            <div class="header-section">
                <!--logo and logo icon start-->
                <div class="logo">
                    <a href="index.html">
                        <span class="logo-img">
                            <img src="assets/images/logo_sm.png" alt="" height="26">
                        </span>
                        <!--<i class="fa fa-maxcdn"></i>-->
                        <span class="brand-name">System</span>
                    </a>
                </div>

                <!--toggle button start-->
                <a class="toggle-btn"><i class="ti ti-menu"></i></a>
                <!--toggle button end-->

                <!--mega menu start-->
                <div id="navbar-collapse-1" class="navbar-collapse collapse mega-menu">
                    <ul class="nav navbar-nav">
                        <!-- <li class="dropdown">
                            <a href="javascript:;" data-toggle="dropdown" class=""> English <i class="mdi mdi-chevron-down"></i> </a>
                            <ul role="menu" class="dropdown-menu language-switch">
                                <li>
                                    <a tabindex="-1" href="javascript:;"> German </a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="javascript:;"> Italian </a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="javascript:;"> French </a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="javascript:;"> Spanish </a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="javascript:;"> Russian </a>
                                </li>
                            </ul>
                        </li> -->
                        <li>
                            <form class="search-content" action="index.html" method="post">
                                <input type="text" class="form-control mt-3" name="keyword" placeholder="Search...">
                                <span class="search-button"><i class="ti ti-search"></i></span>
                            </form>
                        </li>
                    </ul>
                </div>
                <!--mega menu end-->

                <div class="notification-wrap">
                    <!--right notification start-->
                    <div class="right-notification">
                        <ul class="notification-menu">
                            <li>
                                <a href="javascript:;" class="notification" data-toggle="dropdown">
                                    <i class="mdi mdi-bell-outline"></i>
                                    <span class="badge badge-success">4</span>
                                </a>
                                <ul class="dropdown-menu mailbox dropdown-menu-right">
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>
                                    <!-- <li class="notification-scroll">
                                        <div class="message-center">
                                            <a href="#">
                                                <div class="user-img">
                                                    <i class="ti ti-star"></i>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Jane A. Seward</h6>
                                                    <span class="mail-desc">Iwon meddle and...</span>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img">
                                                    <i class="ti ti-heart"></i>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Michael W. Salazar</h6>
                                                    <span class="mail-desc">Lovely gide learn for you...</span>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img">
                                                    <i class="ti ti-image"></i>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>David D. Chen</h6>
                                                    <span class="mail-desc">Send his new photo...</span>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img">
                                                    <i class="ti ti-bell"></i>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Irma J. Hendren</h6>
                                                    <span class="mail-desc">6:00 pm our meeting so...</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li> -->
                                    <li>
                                        <a class="text-center bg-light" href="javascript:void(0);">
                                            <strong>See all notifications</strong>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <!-- <li>
                                <a href="javascript:;" class="notification" data-toggle="dropdown">
                                    <i class="mdi mdi-email-outline"></i>
                                    <span class="badge badge-danger">9</span>
                                </a>
                                <ul class="dropdown-menu mailbox dropdown-menu-right">
                                    <li>
                                        <div class="drop-title">New Messages 5</div>
                                    </li>
                                    <li class="notification-scroll">
                                        <div class="message-center">
                                            <a href="#">
                                                <div class="user-img">
                                                    <img src="assets/images/users/avatar-2.jpg" alt="user" class="rounded-circle">
                                                    <span class="profile-status online pull-right"></span>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Cassie T. Bishop</h6>
                                                    <span class="mail-desc">Just see the my admin!</span>
                                                    <span class="time">9:30 AM</span>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img">
                                                    <img src="assets/images/users/avatar-3.jpg" alt="user" class="rounded-circle">
                                                    <span class="profile-status busy pull-right"></span>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Rudy A. Scott</h6>
                                                    <span class="mail-desc">I've sung a song! See you at</span> <span class="time">9:10 AM</span>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img">
                                                    <img src="assets/images/users/avatar-4.jpg" alt="user" class="rounded-circle">
                                                    <span class="profile-status away pull-right"></span>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Kevin D. Jernigan</h6>
                                                    <span class="mail-desc">I am a singer!</span>
                                                    <span class="time">9:08 AM</span>
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img">
                                                    <img src="assets/images/users/avatar-5.jpg" alt="user" class="rounded-circle">
                                                    <span class="profile-status offline pull-right"></span>
                                                </div>
                                                <div class="mail-contnet">
                                                    <h6>Jane A. Seward</h6>
                                                    <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="text-center bg-light" href="javascript:void(0);"> <strong>See all notifications</strong> </a>
                                    </li>
                                </ul>
                            </li> -->

                            <li>
                                <a href="javascript:;" data-toggle="dropdown">
                                    <img src="<?php echo base_url(); ?>assets/images/users/avatar-1.jpg" alt="">
                                </a>
                                <div class="dropdown-menu dropdown-menu-right profile-menu">
                                    <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle m-r-5 text-muted"></i> Profile</a>
                                    <a class="dropdown-item" href="#"><span class="badge badge-success pull-right">5</span><i class="mdi mdi-settings m-r-5 text-muted"></i> Settings</a>
                                    <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline m-r-5 text-muted"></i> Lock screen</a>
                                    <a class="dropdown-item" href="<?php echo site_url('auth');?>"><i class="mdi mdi-logout m-r-5 text-muted"></i> Logout</a>
                                </div>
                            </li>

                            <li>
                                <div class="sb-toggle-right2">
                                    <i class="mdi mdi-apps"></i>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--right notification end-->
                </div>
            </div>
            <!-- header section end-->