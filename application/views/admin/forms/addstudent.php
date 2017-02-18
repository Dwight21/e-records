<div class="content-wrapper">
    <!-- Content Header (Page header) -->
   <section class="content-header">
	 <h1>Student<small>preview</small></h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Student</a></li>
        <li class="active"><a href="">Add Student</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content" id="teacher">
     	<div class="box box-solid box-info">
		  <div class="box-header with-border">
		    <h3 class="box-title"><i class="glyphicon glyphicon-plus"></i> Add Student</h3>
		    
		  </div>
		  <div class="box-body">
		    <form action="" method="POST">
		    	 <div class="form-group">
			    <label for="teacherID">ID:</label>
			    <input type="text"  maxlength="5" class="form-control" id="teacherID" name="tid">
			  </div>
			  <div class="form-group">
			    <label for="fname">First Name:</label>
			    <input type="text"  class="form-control" id="tfname" name="tfname">
			  </div>
			  <div class="form-group">
			    <label for="mname">Middle Name:</label>
			    <input type="text"  class="form-control" id="tmname" name="tmname">
			  </div>
			  <div class="form-group">
			    <label for="lname">Last Name:</label>
			    <input type="text"  class="form-control" id="tlname" name="tlname">
			  </div>
			  <div class="form-group">
			    <label for="email">Email address:</label>
			    <input type="email" class="form-control" id="temail" name="temail" placeholder="@ustp.edu.ph">
			  </div>
			   <div class="form-group">
				   <label for="sr_section">Section:</label><br>	
			       <select name="sr_section" id="sr_section" class=" class-route-select  btn btn-default dropdown-toggle">
				   	<option selected disabled>Select Section</option>
				   	<option value="">R1</option>
				   	<option value="">R1</option>
				   	<option value="">R1</option>
				   </select>
				</div>
			  <div class="form-group">
			    <label for="school_year">School Year:</label>
			    <input type="text" maxlength="4" class="form-control" id="school_year" name="school_year">
			  </div>
			  <div class="form-group">
			    <label for="contact">Contact:</label>
			    <input type="text" maxlength="11" class="form-control" id="tcontact" name="tcontact">
			  </div>
			  <div class="form-group">
			    <label for="dob">Date of birth:</label>
			    <input type="date"  class="form-control" id="dob" name="dob">
			  </div>
			  <div class="form-group">
			    <label for="password">Password:</label>
			    <input type="password" class="form-control" id="tcontact" name="tcontact" >
			  </div>
			  <div class="form-group">
			    <label for="gender">Gender:</label><br>	
			    <select name="tgender" id="tgender" class="btn btn-default dropdown-toggle class-route-select"> 
			    	<option selected disabled>Select Gender</option>
			    	<option value="Male">Male</option>
			    	<option value="Female">Female</option>
			    </select>
			  </div>

			  
			  <button type="submit" class="btn btn-submit">Submit</button>
			 <a href="/e-records/admin/student" class="btn btn-reset"> Back</a>

		    </form>
		  </div>
		
		</div>
    </section>
  
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->