label variable prov "Código de la Provincia"

label variable nom_prov "Provincia"

label variable edad "Edad"

label variable sexo "Sexo"

label variable e_civil "Estado civil"
label define uno 1 "Soltero" 2 "Divorciado" 3 "Casado" 4 "Acompañado"
label values p1 uno

*PREGUNTA 1
label variable p1 "¿Usted conoce lo que es un Sistema de Gestión de la Calidad"
label define sino1 1 "Sí" 2 "No" 98 "No sé" 99 "No responde"
label values p1 sino1

*PREGUNTA 2
label variable p2 "¿Tiene algún medidor de satisfacción de sus clientes?"
label define sino2 1 "Sí" 2 "No" 98 "No sé" 99 "No responde"
label values p2 sino2

*PREGUNTA 2A
label variable p2a_mes "¿Cada qué tiempo lo hace? MESES"
label variable p2a_año "¿Cada qué tiempo lo hace? AÑOS"

*PREGUNTA 3
label variable p3_op1 "¿Atraso en la documentación?"
label variable p3_op2 "¿No se entregó la licencia?"
label variable p3_op3 "¿Pago atrasado?"
label variable p3_op4 "¿Las visitas de inspección se dieron en tiempo?"
label variable p3_op5 "¿Otro"
label define sn 1 "Sí" 2 "No"
label values p3_op1 sn
label values p3_op2 sn
label values p3_op3 sn
label values p3_op4 sn
label values p3_op5 sn

*PREGUNTA 4
label variable p4 "¿Cuántos trabajadores tiene actualmente?"

*PREGUNTA 5
label variable p5 "¿En su negocio tienen la misma jornada laboral todos sus trabajadores?"
label define sino3 1 "Sí" 2 "No" 98 "No sé" 99 "No responde"
label values p5 sino3

*PREGUNTA 6
label variable p6 "En promedio, ¿cuánto ganan sus trabajadores al mes?"

*PREGUNTA 7
label variable p7 "¿Cuál es ingreso de su negocio en un mes?"

*PREGUNTA 8
label variable p8 "¿Ve su negocio en el futuro creciendo hacia otras áreas?"
label define sino4 1 "Sí" 2 "No" 98 "No sé" 99 "No responde"
label values p8 sino4

*PREGUNTA 9
label variable p9 "¿Considera posible un segundo negocio de acuerdo al crecimiento del que ya posee?"
label define sino5 1 "Sí" 2 "No" 98 "No sé" 99 "No responde"
label values p9 sino5

* Rangos de edad
gen rango_edad=0
replace rango_edad=1 if edad>=0 & edad<=17
replace rango_edad=2 if edad>=18 & edad<=35
replace rango_edad=3 if edad>=36 & edad<=50
replace rango_edad=4 if edad>=51 & edad<=70

label variable rango_edad "Rango de edad"
label define redad 1 "De 0 a 17" 2 "De 18  a 35" 3 "De 36 a 50" 4 "De 51 a 70"
label values rango_edad redad


* Rangos de p6 (ingresos)
gen rango_p6=0
replace rango_p6=1 if p6>=8 & p6<=200
replace rango_p6=2 if p6>=201 & p6<=500
replace rango_p6=3 if p6>=501 & p6<=700
replace rango_p6=4 if p6>=701 & p6<=999

label variable rango_p6 "Rango de ingreso"
label define rp6 1 "De 8 a 200" 2 "De 201  a 500" 3 "De 501 a 700" 4 "De 701 a 99"
label values rango_p6 rp6


