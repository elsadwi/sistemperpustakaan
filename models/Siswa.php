<?php

require_once('DBClass.php');
class Siswa extends DBClass{
	
	public function getSiswa(){
		$str = "select s.nis, s.full_name, s.email, n.code, n.nationality from siswa s
			join nationality n On s.id_nationality = n.id_nationality
			order by s.full_name";
		$r = $this->getRows($str);
		$this->close();
		
		return $r;
	} 
	
	public function editSiswa($id, $data = array()){
		$str = "Update siswa set ";
		
		$i = 0;
		foreach($data as $k=>$v){
			$coma = ($i>0)?",":"";
			$str .= $coma.$k."='".$v."'";			
			$i++;
		}	
			
		$str .= "Where id_siswa=".$id;
		
		$this->putRows($str);
	}
}
