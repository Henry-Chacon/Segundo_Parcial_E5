;PROBLEMA: Microscopio Compuesto
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Longitud focal del objetivo (f_o) = 8 mm
; Longitud focal del ocular (f_e) = 40 mm
; Distancia entre los dos lentes (d) = 200 mm
; Distancia de la imagen final desde el ocular (v_e) = 250 mm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    AREA Codigo,CODE, READONLY, ALIGN =2
    THUMB
    EXPORT Start

Start
    ; Inicialización de variables
    VLDR.F32 S0, =8.0       ; f_o (longitud focal del objetivo)
    VLDR.F32 S1, =40.0      ; f_e (longitud focal del ocular)
    VLDR.F32 S2, =200.0      ; d (distancia entre los lentes)
    VLDR.F32 S3, =250.0      ; v_e (distancia de la imagen final desde el ocular)

    ; Cálculo de v_o = d - v_e
    VLDR.F32 S4, =200.0     ; Cargar d en S4
    VLDR.F32 S5, =250.0     ; Cargar v_e en S5
    VSUB.F32 S6, S4, S5     ; S6 = d - v_e (v_o)

    ; Cálculo de u_o utilizando la fórmula del objetivo
    ; 1/f_o = 1/u_o + 1/v_o  =>  1/u_o = 1/f_o - 1/v_o
    VLDR.F32 S7, =1.0       ; Cargar 1.0 en S7
    VDIV.F32 S8, S7, S0     ; S8 = 1/f_o (carga de 1.0 y división)
    VDIV.F32 S9, S7, S6     ; S9 = 1/v_o (carga de 1.0 y división)
    VSUB.F32 S10, S8, S9    ; S10 = 1/u_o

    ; Calcular u_o
    VLDR.F32 S11, =1.0      ; Cargar 1.0 en S11
    VDIV.F32 S12, S11, S10   ; S12 = u_o (u_o = 1/(1/u_o))

    ; Cálculo de la amplificación total
    ; Amplificación del objetivo M_o = v_o / u_o
    VDIV.F32 S13, S6, S12   ; S13 = M_o

    ; Amplificación del ocular M_e = v_e / u_e, donde u_e = v_o
    VDIV.F32 S14, S5, S6    ; S14 = M_e

    ; Amplificación total M = M_o * M_e
    VMUL.F32 S15, S13, S14  ; S15 = M (amplificación total)

    ; Fin del programa
    ; Aquí podrías añadir código para mostrar los resultados o realizar otras acciones.

    ALIGN
    END
