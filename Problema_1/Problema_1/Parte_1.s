

; Inicializacion del codigo
	AREA Codigo,CODE, READONLY, ALIGN =2
	THUMB
	EXPORT Start

Start
    ; Lista de registros para que el usuario coloque la lista de numeros que desee que se ordenen de forma ascendente.
    VLDR.F32 S0, =99.0   
    VLDR.F32 S1, =25.0   
    VLDR.F32 S2, =12.0   
    VLDR.F32 S3, =22.0   
    VLDR.F32 S4, =77.0   
	VLDR.F32 S5, =36.0
	VLDR.F32 S6, =96.0
	VLDR.F32 S7, =52.0
	VLDR.F32 S8, =15.0
	VLDR.F32 S9, =10.0
	VLDR.F32 S10, =44.0
	VLDR.F32 S11, =18.0
	VLDR.F32 S12, =21.0
	VLDR.F32 S13, =41.0
	VLDR.F32 S14, =50.0

    ; Inicio del bucle externo
Loop
    ; Inicio del bucle interno 
    VMOV.F32 S20, S0    ; Carga S0 en S6 para comparaciones
    VMOV.F32 S21, S1    ; Carga S1 en S7 para comparaciones
	
    ; Compara S0 y S1 (S15 y S16)
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
	
    ; Si S0 > S1, intercambia S0 y S1 (cambio aquí para orden ascendente)
    IT GT
    VMOVGT.F32 S20, S0  
    VMOVGT.F32 S0, S1  
    VMOVGT.F32 S1, S20  

    ; Repite el proceso para los demás pares de registros (S1-S2, S2-S3, S3-S4....)
	
	;S1-S2
    VMOV.F32 S20, S1
    VMOV.F32 S21, S2
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S1
    VMOVGT.F32 S1, S2
    VMOVGT.F32 S2, S20
	
	;S2-S3
	VMOV.F32 S20, S2
    VMOV.F32 S21, S3
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S2
    VMOVGT.F32 S2, S3
    VMOVGT.F32 S3, S20
	
	;S3-S4
	VMOV.F32 S20, S3
    VMOV.F32 S21, S4
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S3
    VMOVGT.F32 S3, S4
    VMOVGT.F32 S4, S20
	
	;S4-S5
	VMOV.F32 S20, S4
    VMOV.F32 S21, S5
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S4
    VMOVGT.F32 S4, S5
    VMOVGT.F32 S5, S20
	
	;S5-S6
	VMOV.F32 S20, S5
    VMOV.F32 S21, S6
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S5
    VMOVGT.F32 S5, S6
    VMOVGT.F32 S6, S20
	
	;S6-S7
	VMOV.F32 S20, S6
    VMOV.F32 S21, S7
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S6
    VMOVGT.F32 S6, S7
    VMOVGT.F32 S7, S20
	
	;S7-S8
	VMOV.F32 S20, S7
    VMOV.F32 S21, S8
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S7
    VMOVGT.F32 S7, S8
    VMOVGT.F32 S8, S20
	
	;S8-S9
	VMOV.F32 S20, S8
    VMOV.F32 S21, S9
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S8
    VMOVGT.F32 S8, S9
    VMOVGT.F32 S9, S20
	
	;S9-S10
	VMOV.F32 S20, S9
    VMOV.F32 S21, S10
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S9
    VMOVGT.F32 S9, S10
    VMOVGT.F32 S10, S20
	
	;S10-S11
	VMOV.F32 S20, S10
    VMOV.F32 S21, S11
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S10
    VMOVGT.F32 S10, S11
    VMOVGT.F32 S11, S20
	
	;S11-S12
	VMOV.F32 S20, S11
    VMOV.F32 S21, S12
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S11
    VMOVGT.F32 S11, S12
    VMOVGT.F32 S12, S20
	
	;S12-S13
	VMOV.F32 S20, S12
    VMOV.F32 S21, S13
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S12
    VMOVGT.F32 S12, S13
    VMOVGT.F32 S13, S20
	
	;S13-S14
	VMOV.F32 S20, S13
    VMOV.F32 S21, S14
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT GT
    VMOVGT.F32 S20, S13
    VMOVGT.F32 S13, S14
    VMOVGT.F32 S14, S20

    ; Fin del bucle interno 

    ; Decrementa el contador del bucle externo 
    SUBS R0, R0, #1

    ; Si el contador del bucle externo no es cero, repite el bucle externo
    BNE Loop

		ALIGN
		END
