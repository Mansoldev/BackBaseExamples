<?php

class DisplayForm extends HelperFormCore{

	public function showForm($arrayFields){

		/********** DEFINIR EL FORMULARIO ***************/
		//Definicion del legend
		$fields[0]['form'] = array(
        	'legend' => array(
                    'title'=> $this->l('Datos a exportar'),
                    'icon' => 'icon-cogs'
            ),
        'description' => $this->l('Seleccione los campos que desee obtener de la base de datos y el tipo de archivo que desee como resultado.')
     	);
		//definicion de los campos checkbox segun el array de data.php
		$cont=1;
		for($i=0;$i<count($arrayFields);$i++){
			$fields[$cont]['form'] = array(
		  		'type'    => 'checkbox',
		  		'label'   => $this->l($arrayFields[$i]),
		  		'desc'    => $this->l('Eliges este campo para obtener su resultado en la exportacion'),
		  		'name'    => $arrayFields[$i],
		  		'values'  => array(
			    	//'query' => $options,
			    	'id'    => $arrayFields[$i],
			    	'name'  => $arrayFields[$i]
			    )
			);
			$cont++;
		}
		//definicion del boton de enviar
     	$fields[$cont]['form'] = array(
        	'submit' => array(
	            'name' => 'btnSubmit',
	            'title' => $this->l('Save'),
	        )
	    );

     	/*********** DEFINIR EL OBJETO HELPER *************/
	    $helper                  = new HelperForm();
	    $helper->module          = $this;
	    $helper->name_controller = $this->name;
	    $helper->token           = Tools::getAdminTokenLite('AdminModules');
	    $helper->currentIndex    = AdminController::$currentIndex.'&configure='.$this->name;
	 
	    //$helper->languages       = $this->context->controller->_languages;
	    //$helper->default_form_language    = $this->context->controller->default_form_language;
	    //$helper->allow_employee_form_lang = $this->context->controller->default_form_language;
	    $helper->toolbar_scroll  = false;
	    $helper->show_toolbar    = false;
	    $helper->show_cancel_button        = true;
	     
	    /************** CREAR EL FORMULARIO ****************/
	    //cargar los valores de los campos del formulario
	    //$helper->fields_value = $valores;
	    //Obtener el código HTML del formulario con los campos y valores definidos
	    $form = $helper->generateForm($fields);
	 
	    return $form;
	}
		/*$sql = new DbQuery();
		$sql->select('id_product,price,quantity,minimal_quantity');
		$sql->from('product');
		$consulta;
		$consulta=Db::getInstance()->executeS($sql);
		$html="<br>";

		for($i=0;$i<count($consulta);$i++){
			$resultados=$consulta[$i];
			foreach($resultados as $indice => $campo){
				$html.=$indice." - ";
				$html.=$campo." - ";
			}
			$html .= "<br><br><br>";
		}

		return $html;*/

}


?>