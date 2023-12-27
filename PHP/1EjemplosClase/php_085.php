<?
$proximasemana=time()+(7*24*60*60);
// suma 7 dias, 24 horas, 60 mins y 60 segs
echo "Ahora: ".date('Y-m-d')."<br/>";
echo "Proxima semana: ".date('d-m-Y',$proximasemana)."<br/>";
echo "Proxima semana valor: ".$proximasemana."<br/><br/>";

$fechanacimiento=mktime(8,0,0,9,10,1994);
echo "ahora: ".date("l jS \of F \of Y ",$fechanacimiento)."<br/>";
?>