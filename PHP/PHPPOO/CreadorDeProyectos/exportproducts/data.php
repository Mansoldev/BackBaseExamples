<?php

/*$fields_value=array();
for($i=0;$i=2;$i++){
	$fields_value['campo'.$i]=1;
}
$fields_value['selectField']=1;
*/
$fields_value=array(
	'id_product' => 1,
	'price' => 1,
	'quantity' => 1,
	'minimal_quantity' => 1,
	'wholesale_price' => 1,
	'reference' => 1,
	'condition' => 1,
	/*'id_product0' => 1,
	'id_product1' => 1,
	'id_product2' => 1,
	'id_product3' => 1,
	'id_product4' => 1,
	'id_product5' => 1,
	'id_product6' => 1,
	'id_product7' => 1,
	'id_product8' => 1,
	'id_product9' => 1,
	'price0' => 1,
	'price1' => 1,
	'price2' => 1,
	'price3' => 1,
	'price4' => 1,
	'price5' => 1,
	'price6' => 1,
	'price7' => 1,
	'price8' => 1,
	'price9' => 1,
	'quantity0' => 1,
	'quantity1' => 1,
	'quantity2' => 1,
	'quantity3' => 1,
	'quantity4' => 1,
	'quantity5' => 1,
	'quantity6' => 1,
	'quantity7' => 1,
	'quantity8' => 1,
	'quantity9' => 1,
	'reference0' => 1,
	'reference1' => 1,
	'reference2' => 1,
	'reference3' => 1,
	'reference4' => 1,
	'reference5' => 1,
	'reference6' => 1,
	'reference7' => 1,
	'reference8' => 1,
	'reference9' => 1,
	'campo0' => 1,
	'campo1' => 1,
	'campo2' => 1,
	'campo3' => 1,
	'campo4' => 1,
	'campo5' => 1,
	'campo6' => 1,
	'campo7' => 1,
	'campo8' => 1,
	'campo9' => 1,
	'otro0' => 1,
	'otro1' => 1,
	'otro2' => 1,
	'otro3' => 1,
	'otro4' => 1,
	'otro5' => 1,
	'otro6' => 1,
	'otro7' => 1,
	'otro8' => 1,
	'otro9' => 1,
	'algo0' => 1,
	'algo1' => 1,
	'algo2' => 1,
	'algo3' => 1,
	'algo4' => 1,
	'algo5' => 1,
	'algo6' => 1,
	'algo7' => 1,
	'algo8' => 1,
	'algo9' => 1,*/
	'selectField' => 1
);

$values=array_keys($fields_value);

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


/********************************************* FORMULARIO 1 ************************************************/


$fields_form['form']['legend'] = array(
		'title' => $this->l('Selección de campos'),
		'icon' => 'icon-cogs',
		//'description' => $this->l('The following features allow you to select the fields you like to display in export document.')
);

$fields_form['form']['description'] =  $this->l('The following features allow you to select the fields you like to display in export document.');

$fieldsCont=0;
foreach($values as $value){
	if($fieldsCont<=(count($values)-2)){
		$fields_form['form']['input'][$fieldsCont] = array(
						'type' => 'switch',
						'label' => $value,//$this->l('Ajax cart'),
						'hint' => $this->l('You could activate this field to export it in the file.'),
						'name' => $value,
						'is_bool' => true,
						//'desc' => $this->l('You could activate this field to export it in the file.'),
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
	} 
	
	$fieldsCont++;
}

$fields_form['form']['input'][$fieldsCont] = array(   //funciona con ['form']
	  'type' => 'select',                              // This is a <select> tag.
	  'label' => 'Formato: ',         // The <label> for this <select> tag.
	  'desc' => $this->l('Choose the export format'),  // A help text, displayed right next to the <select> tag.
	  'name' => 'selectField',                     // The content of the 'id' attribute of the <select> tag.
	  'required' => true,                              // If set to true, this option must be set.
	  'options' => array(
	    'query' => $options,                           // $options contains the data itself.
	    'id' => 'id_option',                           // The value of the 'id' key must be the same as the key for 'value' attribute of the <option> tag in each $options sub-array.
	    'name' => 'name'                               // The value of the 'name' key must be the same as the key for the text content of the <option> tag in each $options sub-array.
	)
);

//$fields_form['form']['description'] =  $this->l('The following features allow you to select the fields you like to display in export document.');

$fields_form['form']['submit'] = array(
        'name' => 'Submit',
        'title' => $this->l('Save'),
        //'class' => 'btn btn-default pull-right'
);


?>