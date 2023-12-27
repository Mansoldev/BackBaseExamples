	    $html .= '<div id="tab-1">';

				$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
				$id_shop = (int)$this->context->shop->id;

				$fields_form[0]['form'] = array(
					'legend' => array(
						'title' => $this->l('Print Settings'),
						'image' => '&#46;&#46;/img/admin/cog.gif'
					),
					'input' => array(
						array(
							'type' => 'textarea',
							'label' => $this->l('Print Message'),
							'desc' => $this->l('Print Message display on the top of the printing page.'),
							'autoload_rte' => true,
							'lang' => true,
							'rows' => 10,
							'cols' => 100,
							'name' => 'contentPrint',
							'required' => false
						)
					),
					'submit' => array(
						'title' => $this->l('Save'),
						'class' => 'button'
					)
				);

				$helper = new HelperForm();
				$helper->module = $this;
				$helper->name_controller = $this->name;
				$helper->token = Tools::getAdminTokenLite('AdminModules');
				$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
				$helper->languages = Language::getLanguages();
				$helper->default_form_language = $default_lang;
				$helper->allow_employee_form_lang = $default_lang;
				$helper->title = $this->displayName;
				$helper->show_toolbar = false;
				$helper->toolbar_scroll = true;
				$helper->submit_action = 'submitPrint';
				$helper->toolbar_btn = array(
					'save' => array(
						'desc' => $this->l('Save'),
						'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.
						'&token='.Tools::getAdminTokenLite('AdminModules'),
					),
					'back' => array(
						'href' => AdminController::$currentIndex.'&token='.Tools::getAdminTokenLite('AdminModules'),
						'desc' => $this->l('Back to list')
					)
				);

				$helper->fields_value['contentPrint'] = $printObject->contentPrint;

				$html .= $helper->generateForm($fields_form);
		

			$html .= '</div>';
			$html .= '<div id="tab-2">';


				$fields_form2[0]['form'] = array(
					'legend' => array(
						'title' => $this->l('Email Settings'),
						'image' => '&#46;&#46;/img/admin/cog.gif'
					),
					'input' => array(
						array(
							'type' => 'textarea',
							'label' => $this->l('Email Message'),
							'desc' => $this->l('Email Message display on the top of the email.'),
							'autoload_rte' => true,
							'lang' => true,
							'rows' => 10,
							'cols' => 100,
							'name' => 'content',
							'required' => false
						)
					),
					'submit' => array(
						'title' => $this->l('Save'),
						'class' => 'button'
					)
				);

				$helper = new HelperForm();
				$helper->module = $this;
				$helper->name_controller = $this->name;
				$helper->token = Tools::getAdminTokenLite('AdminModules');
				$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
				$helper->languages = Language::getLanguages();
				$helper->default_form_language = $default_lang;
				$helper->allow_employee_form_lang = $default_lang;
				$helper->title = $this->displayName;
				$helper->show_toolbar = false;
				$helper->toolbar_scroll = true;
				$helper->submit_action = 'submitEmail';
				$helper->toolbar_btn = array(
					'save' => array(
						'desc' => $this->l('Save'),
						'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.
						'&token='.Tools::getAdminTokenLite('AdminModules'),
					),
					'back' => array(
						'href' => AdminController::$currentIndex.'&token='.Tools::getAdminTokenLite('AdminModules'),
						'desc' => $this->l('Back to list')
					)
				);

				$helper->fields_value['content'] = $emailObject->content;

				$html .= $helper->generateForm($fields_form2);


			$html .= '</div>';
			return $html;

		$html .= '<div id="tab-2">';

				$fields_form2[0]['form'] = array(
					'legend' => array(
						'title' => $this->l('Email Settings'),
						'image' => '&#46;&#46;/img/admin/cog.gif'
					),
					'input' => array(
				  		'type'    => 'checkbox',
				  		'label'   => $this->l('label'),
				  		'desc'    => $this->l('Eliges este campo para obtener su resultado en la exportacion'),
				  		'name'    => 'nombre',
				  		'values'  => array(
					    	//'query' => $options,
					    	'id'    => 1,
					    	'name'  => 'hola'
					    )
					),
					/*'input' => array(
						array(
							'type' => 'textarea',
							'label' => $this->l('Email Message'),
							'desc' => $this->l('Email Message display on the top of the email.'),
							'autoload_rte' => true,
							'lang' => true,
							'rows' => 10,
							'cols' => 100,
							'name' => 'content',
							'required' => false
						)
					),*/
					'submit' => array(
						'title' => $this->l('Save'),
						'class' => 'button'
					)
				);

				$helper = new HelperForm();
				$helper->module = $this;
				$helper->name_controller = $this->name;
				$helper->token = Tools::getAdminTokenLite('AdminModules');
				$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
				$helper->languages = Language::getLanguages();
				$helper->default_form_language = $default_lang;
				$helper->allow_employee_form_lang = $default_lang;
				$helper->title = $this->displayName;
				$helper->show_toolbar = false;
				$helper->toolbar_scroll = true;
				$helper->submit_action = 'submitEmail';

				$helper->fields_value['content'] = 'hola';

				$html .= $helper->generateForm($fields_form2);


			$html .= '</div>';
			return $html;

     	/*********** DEFINIR LOS VALORES PARA EL CAMPO *********/

     	/*********** DEFINIR EL OBJETO HELPER *************/
	    /*$helper                  = new HelperForm();
	    $helper->module          = $this;
	    $helper->name_controller = $this->name;
	    $helper->token           = Tools::getAdminTokenLite('AdminModules');
	    $helper->currentIndex    = AdminController::$currentIndex.'&configure='.$this->name;
	    $helper->languages       = Language::getLanguages();
	    $helper->default_form_language    = (int)Configuration::get('PS_LANG_DEFAULT');
	    $helper->allow_employee_form_lang = (int)Configuration::get('PS_LANG_DEFAULT');
	    $helper->toolbar_scroll  = false;
	    $helper->show_toolbar    = false;
	    $helper->show_cancel_button        = false;*/
	     
	    /************** CREAR EL FORMULARIO ****************/
	    //cargar los valores de los campos del formulario
	    //$helper->fields_value = $valores;
	    //Obtener el código HTML del formulario con los campos y valores definidos
	    //$form = $helper->generateForm($this->fields_options);
	 
	    //return $form;
	    
	    
	    //FUNCION SWITCH
	    
	    $fields_form = array(
			'form' => array(
				'legend' => array(
					'title' => $this->l('Settings'),
					'icon' => 'icon-cogs'
				),
				'input' => array(
					array(
						'type' => 'switch',
						'label' => $this->l('Ajax cart'),
						'name' => 'PS_BLOCK_CART_AJAX',
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
						'label' => $this->l('Show cross-selling'),
						'name' => 'PS_BLOCK_CART_SHOW_CROSSSELLING',
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
						'type' => 'text',
						'label' => $this->l('Products to display in cross-selling'),
						'name' => 'PS_BLOCK_CART_XSELL_LIMIT',
						'class' => 'fixed-width-xs',
						'desc' => $this->l('Define the number of products to be displayed in the cross-selling block.')
					),
				),
				'submit' => array(
					'title' => $this->l('Save')
				)
			),
		);

		$helper = new HelperForm();
		$helper->show_toolbar = false;
		$helper->table =  $this->table;
		$lang = new Language((int)Configuration::get('PS_LANG_DEFAULT'));
		$helper->default_form_language = $lang->id;
		$helper->allow_employee_form_lang = Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG') ? Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG') : 0;
		$this->fields_form = array();

		$helper->identifier = $this->identifier;
		$helper->submit_action = 'submitBlockCart';
		$helper->currentIndex = $this->context->link->getAdminLink('AdminModules', false).'&configure='.$this->name.'&tab_module='.$this->tab
		.'&module_name='.$this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->tpl_vars = array(
			'fields_value' => $this->getConfigFieldsValues(),
			'languages' => $this->context->controller->getLanguages(),
			'id_language' => $this->context->language->id
		);

		return $helper->generateForm(array($fields_form));


		VALIDACIONNNNN:


	        if (!$my_module_name
	          || empty($my_module_name)
	          || !Validate::isGenericName($my_module_name))
	            $html .= $this->displayError($this->l('Invalid Configuration value'));
        	else
        	{
            	Configuration::updateValue('id_product', $my_module_name);
            	$html .= $this->displayConfirmation($this->l('Settings updated'));
        	}

      $my_module_name=Tools::getAllValues();
	        $aValidar=array_keys($fields_value);
	        for($i=0;$i<count($aValidar);$i++){
	        	foreach($my_module_name as $campo => $valor){
	        		if($aValidar[$i] == $campo){
	        			$fields_value[$campo]=$valor;
	        		}
	        	}
	        }