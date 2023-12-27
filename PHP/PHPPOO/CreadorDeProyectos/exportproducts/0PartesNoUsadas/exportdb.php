<?php

class exportdb extends CSVCore{
	
	public static function sacarlistado($array){
		$sql=new DbQuery();
		
		$select='';
		for($i=0;$i<=count($array);$i++){
			$select.=key($array);
			if($i < count($array)-1){
					$select.=", ";
				}
			next($array);
		}

		$sql->select($select);
		$sql->from('product');

		//$query=Db::getInstance()->executeS($sql);
		//return $query;
		return $sql;
	}
}

?>