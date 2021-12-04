	find .   			 		#Buscame cualquier archivo que haya desde esta ruta actual

	find . -type f  				#f: ficheros   --< no muestrad irectorios

	find . -type f -printf "%f\t%p\t%u\t%g\t%m\n"	#Hay que meter un salto de linea al final para nosotros poder formaterar el output cocmo queramos
							#Por ejemplo que me 
							
							#muestre los archivos::de forma tabulada quiero que me indiques la ruta absoluta::
							#de fomra tabulada quiero que me indiques el usuario propietario del archivo :: de forma tabulada que me
							#indiques el grupo asignado:: de forma atabulada dime el modo. 
							
	find . -type f -printf "%f\t%p\t%u\t%g\t%m\n" | column -t   # Con column para que se vea mas bonito :ł
	
	find -name file.name				# Muestra un archivo en especifoco, se debe poner el nombre commpleto con la extension del archivo, Este 								comando devuelve la ruta del archivo
	
	
	find . -type f | xargs cat  			#XARGS -COMMAND permite aplicar a un comando a el output retornado por otro comando; En este ejemplo se hace 								un cat de todos los archivos encontrados en el directorio. XARGS esta bastante bien para formatear OUTPUTS
	
	find . -type f | xargs grep "text"		#Para aplicar un grep de una palabra encontrada dentro de algun archivo