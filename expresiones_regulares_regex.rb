#format_account = "1234-123-123"
#---Regresa true si encuentra un numero de cuenta.
  def acount_found(msj)
     /\S\d{4}-\d{3}-\d{3}/ !~ msj
     #\S	Any non-whitespace character
  end
#---Regresa un número de cuenta si existe dentro del string y nil  en el caso contrario.
   def return_acount_number(string)
     /\d{4}-\d{3}-\d{3}/.match(string) ?  string = string.slice(/\d{4}-\d{3}-\d{3}/) : nil;
   end
#---Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
   def return_array(string)
     string.scan(/\d{4}-\d{3}-\d{3}/)
   end
#---Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo
def formated_string(string)
  if string !~ /\d{10}/ || string !~ /\d{4}\.\d{3}\.\d{3}/
    four_digits = string.slice!(/\d{4}/)
    three_digits = string.slice!(/\d{3}/)
    last_digits = string.slice!(/\d{3}/)
    four_digits + '-' + three_digits + '-' + last_digits
  end
end
#---argumentos
one_acount_number = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
two_acount_number = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"
one_acount_number_with_dots = "El Cliente con el número de cuenta 1234.123.123 se encuentra en proceso de revisión de sus documentos"
one_acount_number_continued = "El Cliente con el número de cuenta 1234123123 se encuentra en proceso de revisión de sus documentos"

p acount_found(one_acount_number) == true
p return_acount_number(one_acount_number) == "1234-123-123"
p return_array(two_acount_number)==["1234-123-123","4321-321-311"]
p formated_string(one_acount_number_continued)=="1234-123-123"
p formated_string(one_acount_number_with_dots)=="1234-123-123"
