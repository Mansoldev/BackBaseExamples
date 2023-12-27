***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
********************************EXPORTPRODUCTS.PHP*************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
 
 /***************************** get content para ver la devolucion de los formularios *************************************/
 //$my_module_name = strval(Tools::getValue('id_product')).strval(Tools::getValue('price')).strval(Tools::getValue('quantity'));
	        //$my_module_name=Tools::getAllValues();
	        /*$aValidar=array_keys($fields_value);
	        for($i=1;$i<count($aValidar);$i++){
	        	foreach($my_module_name as $campo => $valor){
	        		if($aValidar[$i] == $campo){
	        			$fields_value[$campo]=$valor;
	        		}
	        	}
	        }*/
	        //$listado=exportdb::sacarlistado($my_module_name);
	        /*$consulta='';
			for($i=0;$i<count($listado);$i++){
				$resultados=$listado[$i];
				foreach($resultados as $indice => $campo){
					$consulta.=$indice." - ";
					$consulta.=$campo."<br>";
				}
				$consulta .= "<br><br>";
			}
			
	        $html.=$consulta;*/
			
			//ESTO IBA MAS ABAJO
			 //$html.=$guardar;
	        /*foreach($my_module_name as $indice => $campo){
				$listado.=$indice." - ";
				$listado.=$campo." - ";
			}*/
			
/************************************* VALIDAR FORMULARIO ********************************/
	/*private function postValidation($arrayValidar){
 	
 		$values=array_keys($arrayValidar);

	    if (!Tools::getAllValue($values[0])){
	        $this->_errors[] = $this->l('El id_product es obligatorio.');
	    }else{
	    	if (Tools::getValue($values[0])!=0 OR Tools::getValue($values[0])!=1){
	    		$this->_errors[] = "";
	    	}
	    }
	}*/

	getcontent(){
		//$html.=$this->exportToSelectedFormat($listado,$formato);
        //$html.=var_export(ProductCore::getProducts(1,0,50,'id_product','ASC'));

        //$html.=exportdb::sacarListado($my_module_name);
        //$listado=exportdb::sacarListado($my_module_name);
        //$html.=$this->displayArrayResultQuery($listado);
	}

	
***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
************************************EXPORTDB.PHP***************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************

/** cuando pasabas array con: $my_module_name = strval(Tools::getValue('id_product')).strval(Tools::getValue('price')); *******/
		/*next($array);
		for($i=1;$i<=$int;$i++){
			if($array[key($array)]){
				$select.=key($array);
				if($i < $int){
					$select.=", ";
				}
			}
			next($array);
		}*/
		
		
		/*$i=0;
		foreach($array as $campo => $valor){
			$select.=$campo;
				if($i < count($array)){
					$select.=", ";
				}
			$i++;
		}*/
		
		// FUNCION DEVOLVER ARRAY QUERY EN EXPORTPRODUCTS.PHP
		/*$listado='';
		for($i=0;$i<count($consulta);$i++){
			$resultados=$consulta[$i];
			foreach($resultados as $indice => $campo){
				$listado.=$indice." - ";
				$listado.=$campo."<br>";
			}
			$listado .= "<br><br>";
		}
		*/

***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************DATA.PHP****************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************
***************************************************************************************

		/* FORMULARIO ESTATICO
$fields_form = array(
			'form' => array(
				'legend' => array(
					'title' => $this->l('Selección de campos'),
					'icon' => 'icon-cogs'
				),
				'input' => array(
					array(
						'type' => 'switch',
						'label' => $valores[0],//$this->l('Ajax cart'),
						'name' => $valores[0],
						'is_bool' => true,
						'desc' => $this->l('Activate Ajax mode for the cart (compatible with the default theme).'),
						'values' => array(
								array(
									'id' => 'active_on',
									'value' => 1,
									'label' => $this->l('Enabled')
								),
								array(
									'id' => 'active_off',
									'value' => 0,
									'label' => $this->l('Disabled')
								)
							),
						),
					array(
						'type' => 'switch',
						'label' => $valores[1],//$this->l('Show cross-selling'),
						'name' => $valores[1],
						'is_bool' => true,
						'desc' => $this->l('Activate cross-selling display for the cart.'),
						'values' => array(
								array(
									'id' => 'active_on',
									'value' => 1,
									'label' => $this->l('Enabled')
								),
								array(
									'id' => 'active_off',
									'value' => 0,
									'label' => $this->l('Disabled')
								)
							),
						),
					array(
						'type' => 'switch',
						'label' => $valores[2],//$this->l('Show cross-selling'),
						'name' => $valores[2],
						'is_bool' => true,
						'desc' => $this->l('Activate cross-selling display for the cart.'),
						'values' => array(
								array(
									'id' => 'active_on',
									'value' => 1,
									'label' => $this->l('Enabled')
								),
								array(
									'id' => 'active_off',
									'value' => 0,
									'label' => $this->l('Disabled')
								)
							),
						),
					array(
						'type' => 'switch',
						'label' => $valores[3],//$this->l('Show cross-selling'),
						'name' => $valores[3],
						'is_bool' => true,
						'desc' => $this->l('Activate cross-selling display for the cart.'),
						'values' => array(
								array(
									'id' => 'active_on',
									'value' => 1,
									'label' => $this->l('Enabled')
								),
								array(
									'id' => 'active_off',
									'value' => 0,
									'label' => $this->l('Disabled')
								)
							),
						),
					),
				'submit' => array(
					'name' => 'Submit',
					'title' => $this->l('Save')
				)
			),
		);
*/

//se recorre en el for con $fieldscont
//$descriptions=array($this->l(''),$this->l(''),);

/*$fields_form = array(
            'form' => array(
                'title' =>    $this->l('Selección de campos'),
                'icon' =>    'icon-cogs',
                'fields' =>    array(
                    'PS_SHIP_WHEN_AVAILABLE' => array(
                        'title' => $this->l('id del producto:'),
                        'hint' => $this->l('La id'),
                        'validation' => 'isBool',
                        'cast' => 'intval',
                        'type' => 'bool'
                    ),
                ),
                'submit' => array('title' => $this->l('Save'))
            ),
        	'form' => array(
                'title' =>    $this->l('selección de formato'),
                'icon' =>    'icon-gift',
                'fields' =>    array(
                    'PS_GIFT_WRAPPING_TAX_RULES_GROUP' => array(
                        'title' => $this->l('Selecciona el formato:'),
                        'hint' => $this->l('Será el formato con el que se exporte'),
                        'validation' => 'isInt',
                        'cast' => 'intval',
                        'type' => 'select',
                        'list' => array_merge(array(array('id_tax_rules_group' => 0, 'name' => $this->l('None'))), TaxRulesGroup::getTaxRulesGroups(true)),
                        'identifier' => 'id_tax_rules_group'
                    ),
                ),
                'submit' => array('title' => $this->l('Save')),
            ),
        );
*/

/********************************************* FORMULARIO 2 ************************************************/
/*$fields_value2=array(
	'format option'
);

$fields_form['form2'] = array(
		'description' => $this->l('The following feature allow you to select the format you like to export the result document')
	);

$fields_form2['form2']['legend'] = array(
		'title' => $this->l('Selección de formato'),
		'icon' => 'icon-cogs',
		//'description' => $this->l('The following features allow you to select the fields you like to display in export document.')
);

$options = array(
  array(
    'id_option' => 1,       // The value of the 'value' attribute of the <option> tag.
    'name' => 'pdf'    // The value of the text content of the  <option> tag.
  ),
  array(
    'id_option' => 2,
    'name' => 'csv'
  ),
  array(
    'id_option' => 3,
    'name' => 'excel'
  ),
  array(
    'id_option' => 4,
    'name' => 'xml'
  ),
  array(
    'id_option' => 5,
    'name' => 'txt'
  )
);

$fields_form['form2']['input'][0] = array(   //funciona con ['form']
	  'type' => 'select',                              // This is a <select> tag.
	  'label' => $fields_value2[0],         // The <label> for this <select> tag.
	  'desc' => $this->l('Choose a shipping method'),  // A help text, displayed right next to the <select> tag.
	  'name' => $fields_value2[0],                     // The content of the 'id' attribute of the <select> tag.
	  'required' => true,                              // If set to true, this option must be set.
	  'options' => array(
	    'query' => $options,                           // $options contains the data itself.
	    'id' => 'id_option',                           // The value of the 'id' key must be the same as the key for 'value' attribute of the <option> tag in each $options sub-array.
	    'name' => 'name'                               // The value of the 'name' key must be the same as the key for the text content of the <option> tag in each $options sub-array.
	)
);

$fields_form2['form2']['submit'] = array(
        'name' => 'Submit',
        'title' => $this->l('Save'),
        //'class' => 'btn btn-default pull-right'
);*/



DOS FORMULARIOSSSSSSSSSSSSSSSSSSSSS
/********************************************* FORMULARIO 1 ************************************************/


$fields_form['form']['legend'] = array(
		'title' => $this->l('Selección de campos'),
		'icon' => 'icon-cogs',
		//'description' => $this->l('The following features allow you to select the fields you like to display in export document.')
);

$fields_form['form']['description'] =  $this->l('The following features allow you to select the fields you like to display in export document.');

$fieldsCont=0;
foreach($values as $value){
	$fields_form['form']['input'][$fieldsCont] = array(
						'type' => 'switch',
						'label' => $value,//$this->l('Ajax cart'),
						'hint' => $this->l('You could activate this field to export it in the file.'),
						'name' => $value,
						'is_bool' => true,
						'desc' => $this->l('You could activate this field to export it in the file.'),
						'values' => array(
							array(
								'id' => 'active_on',
								'value' => 1,
								'label' => $this->l('Enabled')
							),
							array(
								'id' => 'active_off',
								'value' => 0,
								'label' => $this->l('Disabled')
							)
						),
						//'empty_message' => $this->l('To be displayed when the field is empty.')
					);
	$fieldsCont++;
}

//$fields_form['form']['description'] =  $this->l('The following features allow you to select the fields you like to display in export document.');

$fields_form['form']['submit'] = array(
        'name' => 'Submit',
        'title' => $this->l('Save'),
        //'class' => 'btn btn-default pull-right'
);


/******************************************* Segundo formulario ******************************************/
$fields_value2=array(
	'hola' => 1,
);

$options = array(
  array(
    'id_option' => 'pdf',       // The value of the 'value' attribute of the <option> tag.
    'name' => 'pdf'    // The value of the text content of the  <option> tag.
  ),
  array(
    'id_option' => 'csv',
    'name' => 'csv'
  ),
  array(
    'id_option' => 'excel',
    'name' => 'excel'
  ),
  array(
    'id_option' => 'xml',
    'name' => 'xml'
  ),
  array(
    'id_option' => 'txt',
    'name' => 'txt'
  )
);

$fields_form2['form']['legend'] = array(
		'title' => $this->l('Selección de formato'),
		'icon' => 'icon-cogs',
		//'description' => $this->l('The following features allow you to select the fields you like to display in export document.')
);

$fields_form2['form']['input'][$fieldsCont] = array(   //funciona con ['form']
	  'type' => 'select',                              // This is a <select> tag.
	  'label' => 'hola',         // The <label> for this <select> tag.
	  'desc' => $this->l('Choose a shipping method'),  // A help text, displayed right next to the <select> tag.
	  'name' => 'hola',                     // The content of the 'id' attribute of the <select> tag.
	  'required' => true,                              // If set to true, this option must be set.
	  'options' => array(
	    'query' => $options,                           // $options contains the data itself.
	    'id' => 'id_option',                           // The value of the 'id' key must be the same as the key for 'value' attribute of the <option> tag in each $options sub-array.
	    'name' => 'name'                               // The value of the 'name' key must be the same as the key for the text content of the <option> tag in each $options sub-array.
	)
);

$fields_form2['form']['submit'] = array(
        'name' => 'Ssubmit',
        'title' => $this->l('Export'),
        //'class' => 'btn btn-default pull-right'
);
		