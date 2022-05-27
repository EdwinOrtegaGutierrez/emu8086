
;MODO GRAFICO        
ORG 0100H

MOV AH, 0      ;CONFIGURACION DEL MODO

MOV AL, 13H    ;320x200 PX, 256 COLORES

INT 10H        ;SET DEL MODO
              
MOV AH, 0CH    ;CONFIGURACION PARA UN SOLO PIXEL

MOV AL, 39     ;CONFIGURACION DEL ROJO

MOV CX, 5      ;COORDENADA DE LA COLUMNA "Y"

MOV DX, 5      ;COORDENADA DE LA COLUMNA "X"

INT 10H

;PRIMER RECUADRO [

LINEA.V:

        INC DX       ;INCREMENTO DE COORDENADA
        
        INT 10H      ;SETEO DE COLOR POR PIXEL
        
        CMP DX, 50   ;LIMITE 
        
        JNE LINEA.V  ;RETORNA LA OPERACION HASTA LLEGAR AL LIMITE  
        
LINEA.RETORNOv1:

        DEC DX              
        
        INT 10H            
        
        CMP DX, 5           
        
        JNE LINEA.RETORNOv1            
        
LINEA.H:  

        INC CX
        
        INT 10H
        
        CMP CX, 50
        
        JNE LINEA.H 
        
LINEA.RETORNOh1:

        DEC CX              
        
        INT 10H            
        
        CMP CX, 5           
        
        JNE LINEA.RETORNOh1   
        
LINEA.V2:

        INC DX       
        
        INT 10H      
        
        CMP DX, 50    
        
        JNE LINEA.V2   
        
LINEA.H2:  

        INC CX
        
        INT 10H
        
        CMP CX, 50
        
        JNE LINEA.H2     
        
LINEA.RETORNOh2: 

        DEC CX
        
        INT 10H
        
        CMP CX, 5
        
        JNE LINEA.RETORNOh2  
        
;SEGUNDO RECUADRO [
        
LINEA.V3:

        INC DX       
        
        INT 10H      
        
        CMP DX, 90    
        
        JNE LINEA.V3              
        
LINEA.H3:
        
        INC CX
        
        INT 10H
        
        CMP CX, 50
        
        JNE LINEA.H3                
                      
RET  