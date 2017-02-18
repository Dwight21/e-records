	<script 
		type="text/javascript"
		src="<?php echo base_url('resources/vendors/jquery/jquery-3.1.1.js');?>"	
	></script>
	
	<script 
		type="text/javascript"
		src="<?php echo base_url('resources/vendors/bootstrap/js/bootstrap.js');?>"	
	></script>
	
	<?php 
		if(!empty($script)):
			foreach($script as $scripts):
	?>
	<script 
	type="text/javascript"
	src="<?php echo base_url($scripts);?>"
	></script>
	<?php 
		endforeach;
	endif;
	?>
</body>
</html>