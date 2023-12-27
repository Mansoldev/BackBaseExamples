<?php
if(!defined('_PS_VERSION_'))
	exit;

class ExportProducts extends Module{
	//public $html='';

	public function __construct(){
		$this->name="exportproducts";
		$this->tab="backOfficeHeader";
		$this->version=1.0;
		$this->author="CodePlus";
		$this->empresa = 'CodePlus';
		$this->fileMode = 'utf8';
		$this->textMode = 'utf8';
		$this->confirmUninstall = $this->l('Are you sure that you want to delete all of your contacts?');
		$this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);
		//$this->need_instance = 0;
		$this->bootstrap = true;
		
		parent::__construct();
		
		$this->displayName = $this->l('Exportacion de productos');
		$this->description = $this->l('Modulo para exportar la información de los productos en distintos formatos');
	}

	public function install(){
		if (!parent::install() || !$this->registerHook('backOfficeHeader')){
			return false;
		}
		return true;
	}
	public function uninstall(){
		return (parent::uninstall());
	}	
	
	/************************* FUNCION PRINCIPAL *************************/
	public function getContent(){
		require('data.php');
		//require_once('exportdb.php');
		$html='';
		$html .= '<h2>'.$this->displayName.'.</h2>';
	

	    if (Tools::isSubmit('submit'))
	    {
	    	$html.="datos obtenidos: <br>";
	    	$userOptions=array();
	    	foreach($fields_value as $campo => $valor){
	    		if(Tools::getValue($campo) && ($campo != 'selectField')){
	    			$userOptions[$campo]=strval(Tools::getValue($campo));
	    		}
	    	}
	       	
	    	/*foreach($userOptions as $key => $value){
			$html.="<b>".$key."</b>: ";
			$html.=$value." - ";
			}*/

	        $formato=strval(Tools::getValue('selectField'));
	        $headers=array_keys($userOptions);

	        $consulta=ProductCore::getProducts(1,0,50,'id_product','ASC');
	        $listado=$this->compareUserfieldsDbquery($userOptions,$consulta);
	        
	        $html.=$this->exportToSelectedFormat($listado,$headers,$formato);
	        
	        
    	}
    	$html.=$this->displayForm($fields_form,$fields_value);

    	return $html;   
	}

	
	private function displayForm($fields_form,$fields_value){

		$helper = new HelperForm();
		$helper->show_toolbar = false;
		$helper->table =  $this->table;
		$lang = new Language((int)Configuration::get('PS_LANG_DEFAULT'));
		$helper->default_form_language = $lang->id;
		$helper->allow_employee_form_lang = Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG') ? Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG') : 0;
		$this->fields_form = array();

		$helper->identifier = $this->identifier;
		$helper->submit_action = 'submit';
		$helper->currentIndex = $this->context->link->getAdminLink('AdminModules', false).'&configure='.$this->name.'&tab_module='.$this->tab
		.'&module_name='.$this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->tpl_vars = array(
			'fields_value' => $fields_value,
			'languages' => $this->context->controller->getLanguages(),
			'id_language' => $this->context->language->id
		);
	
		// RECARGA EL FORMULARIO CON LOS VALORES NUEVOS DADOS POR EL USUARIO
    	foreach($fields_value as $campo => $valor){
    		$helper->fields_value[$campo] = strval(Tools::getValue($campo));
    	}
		//$helper->fields_value['MYMODULE_NAME'] = Configuration::get('MYMODULE_NAME');

		return $helper->generateForm(array($fields_form));
	}

	private function displayArrayResultQuery($array){
	        $html='';
			for($i=0;$i<count($array);$i++){
				$columns=$array[$i];
				foreach($columns as $key => $value){
					$html.="<b>".$key."</b>: ";
					$html.=$value." - ";
				}
				$html .= "<br><br>";
			}
			
	        return $html;
	}

	private function compareUserfieldsDbquery($userF,$query){
		//$html='';
		//$html.=$this->displayArrayResultQuery($query);
		//$html.=var_dump($query);
		//$html.="<br><br><br>";
		//foreach($userF as $key => $value){
		//	$html.="<b>".$key."</b>: ";
		//	$html.=$value." - ";
		//}

		//Por cada producto, coger solo los campos array => valor de la consulta que el usuario ha dicho
		$listado=array();
		for($i=0;$i<count($query);$i++){
			$listado[$i]=array();
			foreach($userF as $key => $value){
				$listado[$i][$key]=$query[$i][$key];
			}
		}
		//$html.=$this->displayArrayResultQuery($listado);
		//$html.=var_dump($listado);

		return $listado;
	}

		private function exportToSelectedFormat($listado,$head,$selected){
		$html='';
		$filename = 'export_db.'.$selected;

		switch($selected){
			case 'csv':
				function myFputCsv($fd,$array){
					$line = implode(';', $array);
					$line .= "\n";

					$line=mb_convert_encoding($line, "UTF-8");
					if (!fwrite($fd, $line, 4096))
						$this->post_errors[] = $this->l('Error: Write access limited').' '.dirname(__FILE__).'/'.$filename.' !';
				}

				if (!isset($this->context))
					$this->context = Context::getContext();

				if($listado){
					//$html.= $this->displayError($this->l('DENTRO!'));
					//$html.= "hola";
					if (!$nb = count($listado))
						$html .= $this->displayError($this->l('No customers found with these filters!'));
					elseif ($fd = @fopen(dirname(__FILE__).'/'.strval(preg_replace('#\.{2,}#', '.', Tools::getValue('action'))).$filename, 'w')){
						$header = $head;
						$array_to_export = array_merge(array($header), $listado);
						foreach ($array_to_export as $tab)
							myFputCsv($fd, $tab);
						fclose($fd);
						$html .= $this->displayConfirmation(
							sprintf($this->l('The .CSV file has been successfully exported: %d customers found.'), $nb).'<br />
						<a href="'.$this->context->shop->getBaseURI().'modules/exportproducts/'.Tools::safeOutput(strval(Tools::getValue('action'))).$filename.'">
						<b>'.$this->l('Download the file').' '.$filename.'</b>
						</a>
						<br />
						<ol style="margin-top: 10px;">
							<li style="color: red;">'.
							$this->l('WARNING: When opening this .csv file with Excel, choose UTF-8 encoding to avoid strange characters.').
							'</li>
						</ol>');
					}
					else
						$html .= $this->displayError($this->l('Error: Write access limited').' '.dirname(__FILE__).'/'.strval(Tools::getValue('action')).'_'.$filename.' !');
				}
				else
					$html .= $this->displayError($this->l('No result found!'));
			break;
			case 'excel':
				$html .= $this->displayConfirmation('excel'); 
			break;
			case 'pdf': 
				$html .= $this->displayConfirmation('pdf'); 
			break;
			case 'txt': 
				$html .= $this->displayConfirmation('txt'); 
			break;
			case 'xml': 
				$file=@fopen($filename,'w') or die($this->displayError($this->l('Error: error al abrir el fichero')));
				fputs($file,'<?xml version="1.0" encoding="UTF-8"?>');
				
				fclose($file);
				$html .= $this->displayConfirmation('xml'); 
			break;
		}
		return $html;
	}

}
?>