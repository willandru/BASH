	ls -l                  #Para ver los permisos actuales 
	
	#  -rw-r--r--  root  root  
	#  propietario:grupo:otros
	#  -rwxrwxrwx  
	
	chmod o-r file.txt   # Voy a quitar los permisos de lecturas a otros 
	
	#AVANZADI¿O:: Un privilegio via chattr , lsattr     Permiten asignar flasgs especiales para ficheros para que ni root pueda eliminar su propio fichero
	
	
	#  -rw-r--r--  root  root  
			    #Tu        #Esa columna sale el creador del archivo
			    		# Esto se puede cambiar con chgrp  
			    		
	chmod o+wr file.txt   #Asignar permisos
	
	chgrp user file.txt   #Asignar como grupo a un usuario 	
	
	
	#PERMISOS :: 640  --> Que es la traduccion del binario al decimal    110 100 000 -->  640  -->  r w - r- - - - -
	
	chmod g-r,o-w file.txt
	
	#VIA: chattr
	
	chattr +i file.txt  # ::Le otorga permisos especiales al archivo
	chattr +i -V file.txt # Agrega un Verbose
	
	lsattr   #Para mostrar los permisos que no muestra ls -l