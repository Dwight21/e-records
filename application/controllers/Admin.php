<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends My_Controller_Admin {

    public $dataView =[
            'title' => 'Administrator Dashboard',
            'style' => ['resources/font/font-awesome-4.7.0/css/font-awesome.min.css',
                        'resources/vendors/ionicons-2.0.1/css/ionicons.min.css',
                        'resources/vendors/dist/css/AdminLTE.min.css',
                        'resources/vendors/dist/css/skins/_all-skins.min.css',
                        'resources/css/admin.css'],

            'skin' => 'hold-transition skin-blue sidebar-mini',
            'script' => ['resources/vendors/dist/js/app.min.js']
           
        ];

    public function __construct() 
    {
        parent:: __construct();
    }
    
   /* VIEW SECTION*/
    public function index()
    {
        /*$this->load->view('partials/header',$this->data);
        $this->load->view('layouts/administrator');
        $this->load->view('partials/footer',$this->data);*/

        $this->contentView='admin/dashboard_content';
    }


    public function teacher()
    {
         $this->contentView='admin/table/viewteachers';
    }

    public function student()
    {
         $this->contentView='admin/table/student';
    }

    public function parent()
    {
         $this->contentView='admin/table/viewparent';
    }

    public function viewstudent()
    {
         $this->contentView='admin/table/viewstudent';
    }

    public function section()
    {
         $this->contentView='admin/table/viewsection';
    }

    public function viewclassroute()
    {
         $this->contentView='admin/table/viewclassroute';
    }

    public function classroom()
    {
         $this->contentView='admin/table/viewroom';
    }


    public function classroute()
    {
         $this->contentView='admin/table/section';
    }


    public function subject()
    {
         $this->contentView='admin/table/viewsubject';
    }


    public function subjectroute()
    {
         $this->contentView='admin/table/viewsubjectroute';
    }
    /*END OF VIEW SECTION*/


    /*FORMS SECTION*/

    public function addclassroute()
    {
         $this->contentView='admin/forms/addclassroute';
    }

    public function addroom()
    {
         $this->contentView='admin/forms/addroom';
    }

    public function addsection()
    {
         $this->contentView='admin/forms/addsection';
    }

    public function addsubject()
    {
         $this->contentView='admin/forms/addsubject';
    }

    public function addsubjectroute()
    {
         $this->contentView='admin/forms/addsubjectroute';
    }

    public function addteacher()
    {
         $this->contentView='admin/forms/addteacher';
    }

    public function addstudent()
    {
        $this->contentView='admin/forms/addstudent';
    }
    /*END OF FORMS SECTION*/

}
