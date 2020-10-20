<?php
$conn=mysqli_connect("localhost","ejemplo","123456");
mysqli_select_db($conn,"academico");
$sql="SELECT  
sum(case  when i.residencia='01' and  n.nota>=51 and i.ci=n.ci then 1 else 0 end) ch,
 sum(case when i.residencia='02' and n.nota>=51 and i.ci=n.ci then 1 else 0 end) lp,
 sum(case when i.residencia='03' and n.nota>=51 and i.ci=n.ci then 1 else 0 end) cb,
 sum(case when i.residencia='04'and n.nota>=51 and i.ci=n.ci then 1 else 0 end) oru, 
sum(case when i.residencia='05'  and n.nota>=51 and i.ci=n.ci then 1 else 0 end) pt,
 sum(case when i.residencia='06' and n.nota>=51 and i.ci=n.ci then 1 else 0 end) tj, 
sum(case when i.residencia='07' and  n.nota>=51 and i.ci=n.ci then 1 else 0 end) sc, 
sum(case when i.residencia='08' and n.nota>=51 and i.ci=n.ci then 1 else 0 end) be, 
sum(case when i.residencia='09' and n.nota>=51 and i.ci=n.ci then 1 else 0 end) pd 
FROM identificador i,nota n";
$resultado=mysqli_query($conn,$sql);
while($row=mysqli_fetch_assoc($resultado)){
	$output=" ".$row['ch'];
	$output1=" ".$row['lp'];
	$output2=" ".$row['cb'];
	$output3=" ".$row['oru'];
	$output4=" ".$row['pt'];
	$output5=" ".$row['tj'];
	$output6=" ".$row['sc'];
	$output7=" ".$row['be'];
	$output8=" ".$row['pd'];
}
$sql1="select *from identificador";
$resultado1=mysqli_query($conn,$sql1);


?>
<!DOCTYPE html>
<html>
<head>
	<title>pregunta 2</title>
	<style>
		table,tr,td{
			text-align: center;
		}
		table,tr,th,td{
			border: 1px solid #ccc;
		}
	</style>
</head>
<body>
	<div class="boby-container" style="padding: 20px;"></div>
	<h1 style="text-align: center;">aprobados</h1>
	<table style="width: 100%">
		<tr>
			<th>CI</th>
			<th>NOMBRE</th>
			<th>FECHA NACIMIENTO</th>
			<th>RESIDENCIA</th>
		</tr>
		<?php 
		while($row=mysqli_fetch_assoc($resultado1)){
			echo "<tr>
				<td>".$row['ci']."</td>
				<td>".$row['nombre_completo']."</td>
				<td>".$row['fecha_naci']."</td>
				<td>".$row['residencia']."</td>

				</tr>";
		}

		 ?>
	</table>
	<br>
	<table style="width: 100%">
		<tr>
			<th>chuquisaca</th>
			
			<th>la paz</th>
			
			<th>cochabamba</th>
			
			<th>oruro</th>
			
			<th>potosi</th>
			<th>tarija</th>
			<th>santa cruz</th>
			<th>beni</th>
			<th>pando</th>

		</tr>
		<tr>
			<th><?php echo $output;?></th>
			<th><?php echo $output1;?></th>
			<th><?php echo $output2;?></th>
			<th><?php echo $output3;?></th>
			<th><?php echo $output4;?></th>
			<th><?php echo $output5;?></th>
			<th><?php echo $output6;?></th>
			<th><?php echo $output7;?></th>
			<th><?php echo $output8;?></th>

		</tr>
	
	</table>


</body>
</html>