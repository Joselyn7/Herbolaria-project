/**
 * 
 */
function validar() 
{
   var Nombre , Apellidos, Correo;
   Nombre = document.getElementById("Nombre").value;
   Telefono = document.getElementById("Telefono").value;
   Correo = document.getElementById("Correo").value;
   var ER=/[a-z]/;
   var ERC=/\w+@\w+\.+[a-z]/;
   var ET=/[0-9]/;
   if(Nombre ==="" || Correo ==="" || Telefono ===""){
	   alert("Campo vacio");
	   return false;
   }
   else if(!ER.test(Nombre)){
       alert("Solo se permite uso de caracteres alfabeticos");
       return false;
   }
   else if(!ET.test(Telefono)){
	   alert("Número de telefono no válido");
       return false;
   }
   else if(!ERC.test(Correo)){
       alert("Correo incorrecto");
       return false;
   }
               
}