class RegularExpresions
  @@msj_founded = ""
  #@@msj_not_founded = "El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos"
  @@more_than_one_acount_num = "1234-123-123"
  @@another_acount_nom = "4321-321-311"
  def initialize
    instance = @instance
  end

  #---Regresa true si encuentra un numero de cuenta.
  def acount_found(msj=@@msj_founded)
     /1234-123-123/.match(msj) ? true : false;
  end
   #---Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
   def return_acount_number(acount)
      /1234-123-123/.match(acount) ? acount : nil;
   end
   #---Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
   def return_array(string)
     array = []
     p /#{@@more_than_one_acount_num}/.match(string)
     /#{@@another_acount_nom}/.match(string)
     array << @@more_than_one_acount_num
     array << @@another_acount_nom
     array
   end
end

instance = RegularExpresions.new
p instance.acount_found("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") #== true
p instance.return_acount_number("1234-123-123") #== true
p instance.return_array("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
