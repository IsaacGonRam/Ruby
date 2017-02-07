msj_founded = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
msj_not_founded = "El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos"
msj_transfering = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"
#---Regresa true si encuentra un numero de cuenta.
def acount_found(msj_founded)
   match = /1234-123-123/.match(msj_founded) ? true : false;
end

 p acount_found(msj_founded) == true

#---Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
