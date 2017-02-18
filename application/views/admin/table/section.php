<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
	 <h1>Class Routing<small>preview</small></h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Class Route</a></li>
        <li class="active"><a href="">Select Section</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content" id="smaller-teacher">
         <a href="/e-records/admin/addclassroute" class="btn btn-submit add-plus"><i class="glyphicon glyphicon-plus"></i> Add Class Routing</a>
     	<div class="box box-solid box-info">
		  <div class="box-header with-border">
		    <h3 class="box-title"><i class="glyphicon glyphicon-list"></i> Select Room</h3>
		    
		  </div>
		  <div class="box-body">
		    <form action="" method="POST">
		    	<div class="form-group">
				   <label for="crv_section" >Section:</label>
			       <select name="crv_section" id="crv_section" class="btn btn-default dropdown-toggle class-route-select">
				   	<option selected disabled>Select Section</option>
				   	<option value="">R1</option>
				   	<option value="">R1</option>
				   	<option value="">R1</option>
				   </select>
				</div>
				
				<div class="form-group">
					<label for="crv_yearlvl">Year Level:</label>
			       <select name="crv_yearlvl" id="crv_yearlvl" class="btn btn-default dropdown-toggle class-route-select">
				   	<option selected disabled>Select Year Level</option>
				   	<option value="">1st Year</option>
				   	<option value="">2nd Year</option>
				    <option value="">3rd Year</option>
				    <option value="">4th Year</option>
				   </select>
				</div>

				<div class="form-group"> 
				  <label for="year" class="routing">School Year:</label>
				  <input type="text" name='year' id='year' placeholder="School Year">
				</div>

			  <a href="/e-records/admin/viewclassroute" class="btn btn-submit"> View Routing</a>
		    </form>
		  </div>
		
		</div>
    </section>
  
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->