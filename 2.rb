format_account = "1234-123-123"
#---Regresa true si encuentra un numero de cuenta.
  def acount_found(msj)
     /\S\d{4}-\d{3}-\d{3}/ !~ msj
     #\S	Any non-whitespace character
  end
#---Regresa un número de cuenta si existe dentro del string y nil  en el caso contrario.
   def return_acount_number(string)

   end
#---Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
   def return_array(string)
   end
#---Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"R
  def change_for_x(string)

  end

    # string.gsub(/1234-123/,"XXXX-XXX")
#---Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo


one_acount_number = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"

two_acount_number = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"


p acount_found(one_acount_number) == true
return_acount_number(one_acount_number) == "1234-123-123"
return_array(two_acount_number)==["1234-123-123","4321-321-311"]
change_for_x(one_acount_number)