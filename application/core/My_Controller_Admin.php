<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class MY_Controller_Admin extends CI_Controller 
{
	// Master layout
	protected $layoutView = 'administrator';

	// Default view
	protected $contentView = '';

	// Data
	protected $dataView = [];


	public function __construct()
	{
		parent::__construct();
	}


	public function _output($output)
	{
		$render = NULL;

		// Set the default content view
		if ($this->contentView !== FALSE && empty($this->contentView)) {
			$this->contentView = $this->router->class . '/' . $this->router->method;
		}	

		// Render content
		$yield = file_exists(APPPATH . 'views/' . $this->contentView . '.php')
			? $this->load->view($this->contentView, $this->dataView, TRUE)
			: FALSE;

		// Final render
		if ($this->layoutView) {
			$render = $this->load->view('layouts/' . $this->layoutView, ['yield' => $yield], TRUE );
		} else {
			$render = $yield;
		}

		echo $render;
	}
}