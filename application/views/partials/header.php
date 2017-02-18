<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title><?php echo @$title ?></title>

	<link rel="stylesheet" href="<?php echo base_url('resources/vendors/bootstrap/css/bootstrap.css'); ?>" />
	<link rel="stylesheet" href="<?php echo base_url('resources/vendors/bootstrap/css/bootstrap-theme.css'); ?>" />
	<?php 
	if(!empty($style)):
		foreach($style as $styles):
	?>
<link rel="stylesheet" href="<?php echo base_url($styles); ?>" />
	
	<?php 
			endforeach;
		endif;
	?>

	<link rel="icon" href="<?php echo base_url('resources/img/logo.png'); ?>" />
</head>
<body class="<?php echo @$skin ?>">
