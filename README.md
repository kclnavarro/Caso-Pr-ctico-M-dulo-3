# Caso Practico Modulo 3 - SQL
En este repositorio depositare el análisis en SQL del caso práctico del módulo 3

## Contexto (●'◡'●)
-El restaurante "Sabores del Mundo", es conocido por su auténtica cocina y su ambiente acogedor.
-Este restaurante lanzó un nuevo menú a principios de año y ha estado recopilando
información detallada sobre las transacciones de los clientes para identificar áreas de
oportunidad y aprovechar al máximo sus datos para optimizar las ventas.

## Objetivo ☜(ﾟヮﾟ☜)
Identificar cuáles son los productos del menú que han tenido más éxito y cuales son los que
menos han gustado a los clientes.

## Resultado del Análisis ✔
● Encontrar el número de artículos en el menú.

![2024-09-25](https://github.com/user-attachments/assets/07bb96d0-775b-4201-91c4-cbe7c392191e)


● ¿Cuál es el artículo menos caro y el más caro en el menú?

![art mas y menos caro](https://github.com/user-attachments/assets/765f7958-941f-4b06-b011-651e97561e57)


● ¿Cuántos platos americanos hay en el menú?

![platos americanos](https://github.com/user-attachments/assets/36d14e47-a3e5-4fa9-a74c-3f2de6006e32)


● ¿Cuál es el precio promedio de los platos?

![promedio del precio](https://github.com/user-attachments/assets/f65ae460-f555-448e-8211-9501996670ab)


c) Explorar la tabla “order_details” para conocer los datos que han sido recolectados.

1.- Realizar consultas para contestar las siguientes preguntas:

● ¿Cuántos pedidos únicos se realizaron en total?

![num de pedidos](https://github.com/user-attachments/assets/2cef0b28-8d68-4b1b-8600-217c91836e34)


● ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?

![pedidos con mas](https://github.com/user-attachments/assets/6634a68e-7a32-494a-a3a2-57de5a1d29d6)


● ¿Cuándo se realizó el primer pedido y el último pedido?

![primer y ultimo pedido](https://github.com/user-attachments/assets/27f92a01-c113-4d2a-8385-ce4782b07a86)


● ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?

![num de pedidos entre fechas](https://github.com/user-attachments/assets/c1d36941-f482-4afe-9dc7-7c51c231c084)



e) Una vez que hayas explorado los datos en las tablas correspondientes y respondido las
preguntas planteadas, realiza un análisis adicional utilizando este join entre las tablas.
El objetivo es identificar 5 puntos clave que puedan ser de utilidad para los dueños del
restaurante en el lanzamiento de su nuevo menú. Para ello, crea tus propias consultas y
utiliza los resultados obtenidos para llegar a estas conclusiones.

1.- El número de items en el menú es muy alto, por un lado el restaurant tiene mucha variedad pero que tenga
tanta variedad podría hacer que varios productos se vendan mucho menos que otros, lo cual debe se considerado
al momento de la compra de las materias primas para evitar mermas.

2.- Los 5 artículos mas vendidos fueron los que se muestran a continuación:

![art mas vendidos](https://github.com/user-attachments/assets/4baacc2d-2e35-4bce-abcd-6c5dae283163)

3.- Los 5 artículos menos vendidos fueron los siguientes: 

![articulos menos vendidos](https://github.com/user-attachments/assets/9d283c3e-3220-435a-8333-ea7c41f14ffa)

4.- Los 5 artículos menos vendidos, mostrando su catergoria 

![art menos vendidos por categoria](https://github.com/user-attachments/assets/186b96e4-74e9-4f30-a50e-6148c88f90a0)

5.- Los 5 artículos más vendidos, mostrando su catergoria

![art mas vendidos por categoria](https://github.com/user-attachments/assets/298bf54e-fc9d-49ba-b4bf-dd927a0dd47b)


Así mismo se puede observar que la diferencia de compra entre el artículo mas vendido y el artículo menos vendido es
considerablemente notable.
También e puede observar que dentro de los 5 artículos mas vendidos se ve muy presente la categoría de comida 
americana y asiática. Como notablemente también se observa que dentro de los artpiculos menos vendidos se ve la 
categoría de comida mexicana, lo cual es un indicativo que para el público que esta consumiendo en el restaurant 
o el sitio en el que se encuentra tienen mayor preferencia a la comida Americana por lo cual conviene enfocarse 
en esta categoria de comida y considerar hacer un cambio en el menú.
