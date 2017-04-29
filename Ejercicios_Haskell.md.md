## Ejercicios con Haskell ##


**Indice :**

	01 - 10	Listas.
	11 - 20 Listas continuación.
	21 - 28	Listas de nuevo
	31 - 41	Aritmética
	46 - 50 Lógica y códigos
	
&nbsp;
&nbsp;
**Problema 1**
 Encontrar el último elemento de una lista.
 
  **Ejemplo en Haskell**

	Prelude> myLast [1,2,3,4]
	4
	Prelude> myLast ['x','y','z']
	z'

**Solucion**
Para ello usamos el comando **Last** como se muestra en la **imagen 1**.

![](https://github.com/Tirso4/Tirso4-Tarea-4---Ejercicios-con-Haskell---Programaci-n-L-gica-y-Funcional/blob/master/imagenes/Problema%201.png)

&nbsp;
&nbsp;
**Problema 2**
 Encontrar el penúltimo elemento de una lista.
 
 **Ejemplo en Haskell:**

	Prelude> myButLast [1,2,3,4]
	3
	Prelude> myButLast ['a'..'z']
	'y'


**Solución**
usaremos **Reverse** para invertir nuestra lista de elementos una vez echo esto usaremos **"!!"** el cual nos dará el indice de la lista del elemento que queremos, como podemos observar en la **imagen 2**.

![enter image description here](https://lh3.googleusercontent.com/-sWbL2a8kWM0/WQExFzDartI/AAAAAAAAEgo/_DEyrEJOlW0WF-hdzReV-zTl1voAUy5awCLcB/s0/Problema+1.png "Problema 2.png")

&nbsp;
&nbsp;
**Problema 3**
 Encontrar el elemento de una lista. El primer elemento en la lista es el número 0.
 
 **Ejemplo:**
	
	* (element-at '(a b c d e) 3)
	c
 
 **Solución**
Para ello utilizaremos   **!!** para indicar cual elemento de la lista queremos saber su posición como se muestra en la **imagen 2**.

![enter image description here](https://lh3.googleusercontent.com/-AqyI5A_t3Do/WQEz_zxBcII/AAAAAAAAEg4/kXWUWt4KR5ojWadAp4HHPGFacA3xMpA9gCLcB/s0/Problema+1.png "Problema 3.png")


&nbsp;
&nbsp;
**Problema 4**
Encontrar el número de elementos de una lista.

**Example in Haskell:**
	
	Prelude> myLength [123, 456, 789]
	3
	Prelude> myLength "Hello, world!"
	13

**Ejemplo en Haskell**

	Prelude> elementAt [1,2,3] 2
	2
	Prelude> elementAt "haskell" 5'e'

 **Solución**
Para saber cuantos elementos tiene una lista usamos **Length** y nos dara 
la cantidad de elementos que se encuentran en la lista como se ve en la **imagen 4**.

![enter image description here](https://lh3.googleusercontent.com/-XbpH49iaYEI/WQE37aJOXNI/AAAAAAAAEhM/ymmoCubHekwXs7-DcxpTQDCCedd6kmdEQCLcB/s0/Problema+1.png "Problema 4.png") 

&nbsp;
&nbsp;
**Problema 5**
Invertir una lista.

**Ejemplo en Haskell:**

	Prelude> myReverse "A man, a plan, a canal, panama!"
	"!amanap ,lanac a ,nalp a ,nam A"
	Prelude> myReverse [1,2,3,4]
	[4,3,2,1]

 **Solución**
Usando el comando **Reverse** podemos invertir una lista de elementos fácilmente como se muestra en la **imagen 5**.
 
![enter image description here](https://lh3.googleusercontent.com/-l0EGDG-Vs4k/WQGmq1CgLNI/AAAAAAAAEho/KrIB0SYmrsAZIr5wcJmhobR6cVB8EluMgCLcB/s0/Problema+1.png "Problema 5.png")

&nbsp;
&nbsp;
**Problema 6**
Como saber si una lista es un  palíndromo. Un palíndromo se puede leer delante o hacia atrás

**Ejemplo en Haskell:**

	*Main> isPalindrome [1,2,3]
	False
	*Main> isPalindrome "madamimadam"
	True
	*Main> isPalindrome [1,2,4,8,16,8,4,2,1]
	True
	
 **Solución**
Para saber si es un palíndromo hay que invertir la lista y compararla con la la lista original de tal manera que si concuerda sera un palíndromo y si no ,no lo es como se muestra en la **imagen 6**.

![enter image description here](https://lh3.googleusercontent.com/-OHn3n8t4VHE/WQGvptY0m_I/AAAAAAAAEh8/YXX07ykr2Z8dz8_1KYTNNyvdR8ggLI53wCLcB/s0/Problema+1.png "Problema 6.png")

&nbsp;
&nbsp;
**Problema 7**

 Acoplar una estructura de lista anidada.


**Ejemplo:**

	*(my-flatten '(a (b (c d) e)))
	 (A B C D E)

**Ejemplo en Haskell:**

Tenemos que definir un nuevo tipo de datos, porque las listas en Haskell son
homogéneas.

	 data NestedList a = Elem a | List [NestedList a]
	*Main> flatten (Elem 5)
	[5]
	*Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
	[1,2,3,4,5]
	*Main> flatten (List [])
	[]
	
	
**Solución**
Usaremos el comando **concat** que nos permite fusionar varias listas en una sola como se muestra en la **imagen 7**.

![enter image description here](https://lh3.googleusercontent.com/-1HsVSxD5KrM/WQJRQlo4QZI/AAAAAAAAEiU/Kt3LhB3rs64vXvwq6wuPM52BMVU0vbqyQCLcB/s0/Problema+1.png "Problema 7.png")

&nbsp;
&nbsp;
**Problema 8**

Eliminar duplicados consecutivos de elementos de la lista.

**Ejemplo:**

	* (compress '(a a a a b c c a a d e e e e))
	  (A B C A D E)

**Ejemplo en Haskell:**

	> compress "aaaabccaadeeee"
	"abcade"

**Solución**

Usamos el método **Foldr**  para poder eliminar los elementos consecutivos como se muestra en la **imagen 8**.

**Error**

Solo los elementos duplicados hacia la derecha de dicho elemento son eliminados, si el elemento es diferente de izquierda a derecha no se elimina.

![enter image description here](https://lh3.googleusercontent.com/-_2cHukTMUIk/WQOk3BJeUYI/AAAAAAAAEiw/ZXWzF3WRYN4ohtc5gcWiIKj-p2Gmwi0hACLcB/s0/Problema+1.png "Problema 8.png")

&nbsp;
&nbsp;
**Problema 9**

Empaque duplicados consecutivos de elementos de la lista en sublistas. Si una lista contiene elementos repetidos que se deben colocar en sublistas separadas.

**Ejemplo:**

	* (pack '(a a a a b c c a a d e e e e))
	  ((A A A A) (B) (C C) (A A) (D) (E E E E))

**Ejemplo en Haskell:**

	*Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
	["aaaa","b","cc","aa","d","eeee"]
	
	
**Solución **

usado los comandos takewhile o dropwhile podemos realizar la operacion cargaremos el metodo **9.hs** como se muestra en la **imagen 9** .



&nbsp;
&nbsp;
**Problema 10**

La codificación de longitud de una lista. Use el resultado del problema P09 para poner en práctica el método de compresión de datos RLE llamada. duplicados consecutivos de elementos se codifican como listas (NE) donde N es el número de duplicados del elemento E.


**Ejemplo:**

	* (encode '(a a a a b c c a a d e e e e))
	  ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))

**Ejemplo en Haskell:**

	encode "aaaabccaadeeee"
	[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]


**Solución**

Usaremos los comandos **lenght**, **takehile** y **dropwhile** que estan en el archivo 10.hs, para que nos de el tamaño de la lista de elementos y tomar cada uno de ellos y mostrar cuantos elementos de cada uno hay como se muestra en la **imagen 10**. 


&nbsp;
&nbsp;
**Problema 11**

Modificado por longitud de codificación.

Modificar el resultado del problema 10 de tal manera que si un elemento no tiene duplicados que simplemente se copia en la lista de resultados. Sólo los elementos con duplicados se transfieren como listas (NE).

**Ejemplo:**

	* (encode-modified '(a a a a b c c a a d e e e e))
	  ((4 A) B (2 C) (2 A) D (4 E))

**Ejemplo en Haskell:**

	P11> encodeModified "aaaabccaadeeee"
	[Multiple 4 'a',Single 'b',Multiple 2 'c',
	Multiple 2 'a',Single 'd',Multiple 4 'e']
	

**Solución**

Cargando el Archivo 11.hs con nuestra función **encodeModified** podremos ver el resultado como se ve en la **imagen 11**. 

&nbsp;
&nbsp;
**Problema 12**

Decodificar una por longitud de lista codificada.

Dada una lista de códigos de longitud de ejecución generada como se especifica en el problema 11. Construir su versión sin comprimir.

**Ejemplo in Haskell:**

	P12> decodeModified 
         [Multiple 4 'a',Single 'b',Multiple 2 'c',
         Multiple 2 'a',Single 'd',Multiple 4 'e']
	     "aaaabccaadeeee"
	     
**Solución**

Como en el problema 11 nosotros introducíamos una cadena de elementos y ahora nosotros damos una lista para que nos regrese una cadena **imagen 12**.



&nbsp;
&nbsp;
**Problema 13**

la codificación de longitud de una lista (solución directa).

Implementar el método de compresión de datos por longitud de codificación llamada directamente. Es decir, no crean explícitamente las sub-listas que contienen los duplicados, como en el problema 9, pero sólo contarlos. Como en el problema P11, simplificar la lista de resultados mediante la sustitución de las listas simples (1 X) por X.

**Ejemplo:**

		* (encode-direct '(a a a a b c c a a d e e e e))
		  ((4 A) B (2 C) (2 A) D (4 E))

**Ejemplo en Haskell:**

	P13> encodeDirect "aaaabccaadeeee"
	[Multiple 4 'a',Single 'b',Multiple 2 'c',
	 Multiple 2 'a',Single 'd',Multiple 4 'e']
	 
**Solución**

Cargamos el archivo **13.hs** e introducimos una cadena de elementos como en la **imagen 13** para ver es resultado.

&nbsp;
&nbsp;
**Problema 14**

Duplicar los elementos de una lista.

**Ejemplo:**

	* (dupli '(a b c c d))
	  (A A B B C C C C D D)

**Ejemplo en Haskell:**

	> dupli [1, 2, 3]
	  [1,1,2,2,3,3]

**Solución**
Para este problema tomamos el valor de los elementos y los concatenamos consigo mismo hasta el valor de la lista cargando el archivo **14.hs** y se vera el resultado como en la **imagen 14** .

&nbsp;
&nbsp;
**Problema 15**

Replicar los elementos de una lista de un número dado de veces

**Ejemplo:**

	* (repli '(a b c) 3)
	  (A A A B B B C C C)
	  
**Ejemplo en Haskell:**

	> repli "abc" 3
	  "aaabbbccc"
	  
**Solución**

Como en el caso anterior ahora indicaremos cuantas veces queremos que se repita la lista, cargamos el archivo **15.hs** y el resultado se muestra en la **imagen 15**.



&nbsp;
&nbsp;
**Problema 16**

quitar cada elemento de N-sima de una lista.

**Ejemplo:**

	* (drop '(a b c d e f g h i k) 3)
	  (A B D E G H K)

**Ejemplo en Haskell:**

	*Main> dropEvery "abcdefghik" 3
	"abdeghk"
	

**Solución**

Hay que quitar los elementos  que nosotros indiquemos para ello tendremos esta cadena **"abcdefghik"** y quitaremos los últimos 3 cargamos el archivo **16.hs** y el resultado seria como en la **imagen 16**.


&nbsp;
&nbsp;
**Problema 17**

Dividir una lista en dos partes; Se da la longitud de la primera parte

**Ejemplo:**

	* (split '(a b c d e f g h i k) 3)
	  ( (A B C) (D E F G H I K))

**Ejemplo en Haskell:**

	*Main> split "abcdefghik" 3
	("abc", "defghik")

**Solución**

Teniendo una nuestra cadena **"abcdefghik"** procederemos a que nos la muestre en 2 listas, empezando de izquierda a derecha  sera el desplazamiento que nosotros le daremos para indicar en que punto se dividirá, cargamos el archivo **17.hs** y el resultado seria el siguiente como se muestra en la **imagen 17**



&nbsp;
&nbsp;
**Problema 18**

Extrae una porción de una lista.

**Ejemplo:**

	* (slice '(a b c d e f g h i k) 3 7)
   	  (C D E F G)

**Ejemplo en Haskell:**

	*Main> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
	"cdefg"
	
Dados dos índices, i y k, la rebanada es la lista que contiene los elementos entre el i y el elemento k de la lista original (ambos límites incluidos). Empieza a contar con los elementos 1.

**Solución**

Para ello nosotros indicaremos desde que punto de la cadena queremos que se vea, es decir desde donde empieza hasta donde termina, cargamos el archivo **18.hs**  y el resultado sera el sigueinte como se muestra en la **imagen 18**.


&nbsp;
&nbsp;
**Problema 19**

girar una lista de N posiciones a la izquierda.

Pista: Utilice la longitud funciones predefinidas y (++).

**Ejemplos:**

	* (rotate '(a b c d e f g h) 3)
	  (D E F G H A B C)

	* (rotate '(a b c d e f g h) -2)
	  (G H A B C D E F)

**Ejemplos en Haskell:**

	*Main> rotate ['a','b','c','d','e','f','g','h'] 3
	"defghabc"
 
	*Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
	"ghabcdef"



**Solución** 

En una Lista indicaremos desde donde empezara omitiendo los primeros elementos que hay y poniéndolos la final, cargamos el archivo **19.hs** y el resultado es como en la **imagen 19**.


&nbsp;
&nbsp;
**Problema 20**

Retire el elemento k de una lista.

**Ejemplo en Prolog:**

	?- remove_at(X,[a,b,c,d],2,R).
	X = b
	R = [a,c,d]

**Ejemplo en Lisp:**

	* (remove-at '(a b c d) 2)
	 (A C D)
	 

Tenga en cuenta que esto sólo devuelve la lista de residuos, mientras que 
la versión Prolog también devuelve el elemento eliminado.

**Ejemplo en Haskell:**

	*Main> removeAt 2 "abcd"
	('b',"acd")
	 
**Solución**

En este caso en los elementos que tenemos indicamos cual estará fuera de la cadena llenándolo para mostrar 2 cadenas en la cual esta el elemento retirado y los demas elementos, cargamos el archivo **20.hs** y el resultado es como en la **imagen 20**


&nbsp;
&nbsp;
**Problema 21**
Insertar un elemento en una posición dada en una lista.

**Ejemplo:**

	* (insert-at 'alfa '(a b c d) 2)
	  (A ALFA B C D)

**Ejemplo en Haskell:**

	P21> insertAt 'X' "abcd" 2
	"aXbcd"

**Solución**

En si hay que introducir una cadena dentro de otra cadena indicando la posición en donde queremos que se implemente, como se muestra en la **imagen** 21.

&nbsp;
&nbsp;
**Problema 22**
Crear una lista que contiene todos los números enteros dentro de un rango determinado.

**Ejemplo:**

	* (range 4 9)
  	  (4 5 6 7 8 9)

**Ejemplo en Haskell:**

	Prelude> range 4 9
	[4,5,6,7,8,9]

**Solución**

Simplemente hay que indicar desde donde empieza la lista hasta donde termina como se muestra en la **imagen 22**.



&nbsp;
&nbsp;
**Problema 23**

Extraer un número dado de elementos seleccionados al azar de una lista.

**Ejemplo:**

	* (rnd-select '(a b c d e f g h) 3)
	  (E D A)

**Ejemplo en Haskell:**

	Prelude System.Random>rnd_select "abcdefgh" 3 >>= putStrLneda
	
**Solución**

Hay que indicar cuantos elementos de la cadena queremos y el programa que viene en el archivo **23.hs** nos dará un resultado al azar de la cadena como se muestra en la **imagen 23**.


&nbsp;
&nbsp;
**Problema 24**
mostrar N números diferentes  aleatorios desde el 1..m conjunto.


**Ejemplo:**

	* (rnd-select 6 49)
	  (23 1 17 33 21 37)

**Ejemplo en Haskell:**

	Prelude System.Random>diff_select 6 49
	Prelude System.Random>[23,1,17,33,21,37]
	
**Solución**
Usando **Random** nos facilita poder escoger los numero aleatorios. para ello indicamos cuantos números queremos y el rango de N de los cuales queramos, como se ve en la **imagen 24**.


&nbsp;
&nbsp;
**Problema 25**


Generar una permutación aleatoria de los elementos de una lista.


**Ejemplo:**

	* (rnd-permu '(a b c d e f))
 	  (B A D C E F)

**Ejemplo en Haskell:**

	Prelude System.Random>rnd_permu "abcdef"
	Prelude System.Random>"badcef"
	
**Solución**

Introducimos una cadena y nos mostrara una cadena aleatoria a expeción del primera elemento que este en el cadena original, como se muestra en la **imagen 25**.


&nbsp;
&nbsp;
**Problema 26**


Generar las combinaciones de objetos distintos K elegidos entre los N elementos de una lista

¿De cuántas maneras puede un comité de 3 elegirse entre un grupo de 12 personas? Todos sabemos que hay C (12,3) = 220 posibilidades (C (N, K) denota los coeficientes binomiales bien conocidos). Para los matemáticos puros, este resultado puede ser grande. Pero queremos generar realmente todas las posibilidades de una lista.

**Ejemplo:**

	* (combinations 3 '(a b c d e f))
	  ((A B C) (A B D) (A B E) ... )

**Ejemplo en Haskell:**

	> combinations 3 "abcdef"
	["abc","abd","abe",...]
	
**Solución**

Nosotros indicaremos en la cadena de elementos desde que punto queremos que nos muestre todas las combinaciones que halla, como se muestra en la **imagen 26**.


&nbsp;
&nbsp;
**Problema 27**

**Ejemplo:**

	* (group3 '(aldo beat carla david evi flip gary hugo ida))
	  ( ( (ALDO BEAT) (CARLA DAVID EVI) (FLIP GARY HUGO IDA) )... )
	  
**b)** 

Generalizar el predicado anterior de una manera que podemos especificar 
una lista de tamaños de grupo y el predicado devolverá una lista de grupos.

**Ejemplo:**

	* (group '(aldo beat carla david evi flip gary hugo ida) '(2 2 5))
	( ( (ALDO BEAT) (CARLA DAVID) (EVI FLIP GARY HUGO IDA) )... )
	
Tenga en cuenta que no queremos permutaciones de los miembros del grupo;
Es decir ((ALDO BEAT) ...) es la misma solución que ((BEAT ALDO) ...). Sin
embargo, hacemos una diferencia entre ((ALDO BEAT) (CARLA DAVID) ...) y 
((CARLA DAVID) (ALDO BEAT) ...).

Puede encontrar más información sobre este problema combinatorio en un buen 
libro sobre matemáticas discretas bajo el término "coeficientes multinomiales".

**Ejemplo en Haskell:**

	P27> group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo",
	"ida"]
	[[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
	(altogether 1260 solutions)
 
	27> group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo",
	"ida"]
	[[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
	(altogether 756 solutions)

**Solución**

Es todas las combinaciones que posibles para ello ponemos group [2,3,4]["aldo","beat","carla","david","evi","flip","gary","hugo", "ida"] que nos arroja 1260 resultados , la imagen 27 es excesivamente grande por la cual no se publico 



&nbsp;
&nbsp;
**Problema 28**


**Ejemplo:**

	* (lsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
	  ((O) (D E) (D E) (M N) (A B C) (F G H) (I J K L))

**Ejemplo en Haskell:**

	Prelude>lsort ["abc","de","fgh","de","ijkl","mn","o"]
	Prelude>["o","de","de","mn","abc","fgh","ijkl"]
	
**b)** 

Una vez más, suponemos que una lista contiene elementos que son listas 
ellos mismos. Pero esta vez el objetivo es clasificar los elementos de esta 
lista de acuerdo a su frecuencia de longitud; Es decir, en el predeterminado, 
donde la clasificación se hace de forma ascendente, las listas con longitudes
raras se colocan primero, otras con una longitud más frecuente vienen más
tarde.

**Ejemplo:**

	* (lfsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
	  ((i j k l) (o) (a b c) (f g h) (d e) (d e) (m n))

**Ejemplo en Haskell:**

	lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
	["ijkl","o","abc","fgh","de","de","mn"]



**Solución**
En el caso a) tenemos mostremos las cadenas de menor a mayor tamaño y en el caso b) mostramos las cadenas menos frecuentes y después las mas frecuentes. 




&nbsp;
&nbsp;
**Problema 31**

Determinar si un número entero dado es primo.

**Ejemplo:**

	* (is-prime 7)
	  T

**Ejemplo en Haskell:**

	P31> isPrime 7
	True
	
**Solución**

Determinar si N es un numero primo, como se ve en la **imagen 31**.


&nbsp;
&nbsp;
**Problema 32**

Determinar el máximo común divisor de dos números enteros positivos.

**Ejemplo:**

	* (gcd 36 63)
	  9

**Exjemplo en Haskell:**

	[myGCD 36 63, myGCD (-3) (-6), myGCD (-3) 6]
	[9,3,3]

**Solución**

**imagen 32**.



&nbsp;
&nbsp;
**Problema 33**


Determinar si dos números enteros positivos son primos entre sí. Dos números primos entre sí se si su máximo común divisor es igual a 1.

**Ejemplo:**

	* (coprime 35 64)
	T

**Ejemplo en Haskell:**

	* coprime 35 64
	  True

&nbsp;
&nbsp;
**Solución** 

Hay que revisar los 2 elementos y ver si son primos si es así nos dirá que es verdadero y si no lo es nos dará falso , cargamos el archivo **33.hs** y el resultado seria como el de la **imagen 33**.


&nbsp;
&nbsp;
**Problema 34**

Calcule la función totent de Euler phi (m).

La función llamada totient phi (m) de Euler se define como el número de enteros
positivos que son coprime a m.

Ejemplo: m = 10: r = 1,3,7,9; Así phi (m) = 4. Observe el caso especial: 
phi (1) = 1.

**Ejemplo:**

	* (totient-phi 10)
	  4

**Ejemplo en Haskell:**

	* totient 10
	  4


&nbsp;
&nbsp;
**Solución** 

**imagen 34**.


&nbsp;
&nbsp;
**Problema 35**


Determine los factores primos de un entero positivo dado. Construya una 
lista plana que contenga los factores primos en orden ascendente.

**Ejemplo:**

	* (prime-factors 315)
	  (3 3 5 7)

**Ejemplo en Haskell:**

	> primeFactors 315
	[3, 3, 5, 7]

&nbsp;
&nbsp;
**Solución** 

Hay que sacar todos los números primos de N y ordenarlos de menor a mayor como en una lista como se muestra en la **imagen 35** .


&nbsp;
&nbsp;
**Problema 36**

Determine los factores primos de un entero positivo dado.

Construya una lista que contenga los factores primos y su multiplicidad.

**Ejemplo:**

	* (prime-factors-mult 315)
	  ((3 2) (5 1) (7 1))

**Ejemplon Haskell:**

	*Main> prime_factors_mult 315
	[(3,2),(5,1),(7,1)]

&nbsp;
&nbsp;
**Solución** 

Ver **imagen 36**.



&nbsp;
&nbsp;
**Problema 37**

Calcule la función totent de Euler phi (m) (mejorado).

Véase el problema 34 para la definición de la función de togo de Euler. Si 
se conoce la lista de los factores primos de un número m en forma de problema
36, entonces la función phi (m) puede calcularse de la manera siguiente: 
(p1 m1) (p2 m2) (p3 m3) ... ) La lista de factores primos 
(y sus multiplicidades) de un número dado m. Entonces phi (m) se puede 
calcular con la siguiente fórmula:

	phi(m) = (p1 - 1) * p1 ** (m1 - 1) * 
         (p2 - 1) * p2 ** (m2 - 1) * 
         (p3 - 1) * p3 ** (m3 - 1) * ...



&nbsp;
&nbsp;
**Problema 38**


Comparación de los dos métodos de cálculo de la función totient de Euler.

Utilizar las soluciones de los problemas 34 y 37 para comparar los algoritmos. Tome el número de reducciones como una medida de la eficiencia. Trate de calcular phi (10090) como ejemplo.

(Sin solución requiere)




&nbsp;
&nbsp;
**Problema 39**


Una lista de números primos.

Dada una gama de enteros por su límite inferior y superior, construya una 
lista de todos los números primos en ese rango.

Ejemplo en Haskell:

P29> primesR 10 20
[11,13,17,19]


&nbsp;
&nbsp;
**Solución** 

Hay que mostrar todos los números primos de un rango a otro , cargamos el archivo **39.hs** y el resultado seria como se muestra en la **imagen 39**.

&nbsp;
&nbsp;
**Problema 40**

Conjetura de Goldbach.

La conjetura de Goldbach dice que cada número positivo igual mayor que 2 es la suma de dos números primos. Ejemplo: 28 = 5 + 23. Es uno de los hechos más famosos en la teoría numérica que no ha sido demostrado ser correcto en el caso general. Se ha confirmado numéricamente hasta números muy grandes 
(mucho más grandes que podemos ir con nuestro sistema Prolog). Escribe un predicado para encontrar los dos números primos que suman un entero par.

**Ejemplo:**

	* (goldbach 28)
	  (5 23)

**Ejemplo en Haskell:**

	*goldbach 28
	 (5, 23)

&nbsp;
&nbsp;
**Solución** 

**imagen 40**.


&nbsp;
&nbsp;
**Problema 41**

Dado un rango de números enteros por su límite inferior y superior, 
imprima una lista de todos los números pares y su composición de Goldbach.

En la mayoría de los casos, si un número par está escrito como la suma de dos
números primos, uno de ellos es muy pequeño. Muy raramente, los primos son más
grandes que dicen 50. Intente descubrir cuántos tales casos hay en el rango
2..3000.

**Ejemplo:**

	* (goldbach-list 9 20)
	  10 = 3 + 7
	  12 = 5 + 7
	  14 = 3 + 11
	  16 = 3 + 13
	  18 = 5 + 13
	  20 = 3 + 17
	  * (goldbach-list 1 2000 50)
	  992 = 73 + 919
	  1382 = 61 + 1321
	  1856 = 67 + 1789
	  1928 = 61 + 1867

**Ejemplo en Haskell:**

	*Exercises> goldbachList 9 20
	[(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
	*Exercises> goldbachList' 4 2000 50
	[(73,919),(61,1321),(67,1789),(61,1867)]

&nbsp;
&nbsp;
**Solución** 

**imagen 41**.


&nbsp;
&nbsp;
**Problema 46**

==============
(**) Define predicados y / 2, o / 2, nand / 2, ni / 2, xor / 2, impl / 2 y 
eq / 2 (Para la equivalencia lógica) que tienen éxito o fracasan según el
resultado de sus respectivas operaciones; p.ej. Y (A, B) tendrán éxito, si y
sólo si ambos A y B tienen éxito.

Una expresión lógica en dos variables se puede escribir como en el siguiente 
ejemplo: y (o (A, B), nand (A, B)).

Ahora, escriba una tabla de predicados / 3 que imprima la tabla de verdad de 
una expresión lógica dada en dos variables.

**Ejemplo:**

	(table A B (and A (or A B)))
	true true true
	true fail true
	fail true fail
	fail fail fail

**Ejemplo en Haskell:**

	> table (\a b -> (and' a (or' a b)))
	True True True
	True False True
	False True False
	False False False
	
	&nbsp;
&nbsp;
**Solución** 




&nbsp;
&nbsp;
**Problema 47**
Tablas de verdades para expresiones lógicas (2).

Continúe el problema P46 definiendo y / 2, o / 2, etc como operadores. 
Esto permite escribir la expresión lógica de la manera más natural, como en 
el ejemplo: A y (A o no B). Defina la precedencia del operador como de
costumbre; Como en Java.

**Ejemplo:**

	* (table A B (A and (A or not B)))
 	  true true true
	  true fail true
	  fail true fail
	  fail fail fail

**Ejemplo en Haskell:**

	> table2 (\a b -> a `and'` (a `or'` not b))
	True True True
	True False True
	False True False
	False False False


	&nbsp;
&nbsp;
**Solución** 

**imagen 47**.




&nbsp;
&nbsp;
**Problema 48**

Tablas de verdades para expresiones lógicas (3).

Generalizar el problema P47 de tal manera que la expresión lógica puede
contener cualquier número de variables lógicas. Definir tabla / 2 de una 
manera que tabla (List, Expr) imprime la tabla de verdad para la expresión
Expr, que contiene las variables lógicas enumeradas en List.

**Ejemplo:**

	* (table (A,B,C) (A and (B or C) equ A and B or A and C))
	  true true true true
	  true true fail true
	  true fail true true
	  true fail fail true
	  fail true true true
	  fail true fail true
	  fail fail true true
	  fail fail fail true

**Ejemplo en haskell:**

	> tablen 3 (\[a,b,c] -> a `and'` (b `or'` c) `equ'` a `and'` b `or'` a `and'` c)
	-- infixl 3 `equ'`
	True  True  True  True
	True  True  False True
	True  False True  True
	True  False False True
	False True  True  True
	False True  False True
	False False True  True
	False False False True
 
	-- infixl 7 `equ'`
	True  True  True  True
	True  True  False True
	True  False True  True
	True  False False False
	False True  True  False
	False True  False False
	False False True  False
	False False False False

&nbsp;
&nbsp;
**Solución** 


**imagen 48**.


&nbsp;
&nbsp;
**Problema 49**


Códigos de gris.

Un código Gray de n bits es una secuencia de cadenas de n bits construidas de acuerdo con ciertas reglas. Por ejemplo,

	n = 1: C(1) = ['0','1'].
	n = 2: C(2) = ['00','01','11','10'].
	n = 3: C(3) = ['000','001','011','010',´110´,´111´,´101´,´100´].

Averigüe las reglas de construcción y escriba un predicado con la siguiente 
especificación:

	% gray(N,C) :- C is the N-bit Gray code

¿Se puede aplicar el método de "caché de resultados" para hacer el predicado
más eficiente, cuando se va a utilizar de forma repetida?

&nbsp;
&nbsp;
**Solución**

**imagen 49**.

&nbsp;
&nbsp;
**Problema 50**

Códigos Huffman.

Suponemos un conjunto de símbolos con sus frecuencias, dado como una lista de
términos fr (S, F). Ejemplo: [fr (a, 45), fr (b, 13), fr (c, 12), fr (d, 16),
fr (e, 9), fr (f, 5)]. Nuestro objetivo es construir una lista hc (S, C)
términos, donde C es la palabra de código Huffman para el símbolo S. En 
nuestro ejemplo, el resultado podría ser Hs = [hc (a, '0'), hc (b , '101'),
hc (c, '100'), hc (d, '111'), hc (e, '1101' ), ... etc.]. La tarea será
realizada por el predicado huffman / 2 definido como sigue:

	% huffman(Fs,Hs) :- Hs 
	Es la tabla de códigos Huffman para la tabla de frecuencias Fs

**Ejemplo en Haskell:**

	*Exercises> huffman [('a',45),('b',13),('c',12),('d',16),('e',9),('f',5)]
	[('a',"0"),('b',"101"),('c',"100"),('d',"111"),('e',"1101"),('f',"1100")]



&nbsp;
&nbsp;
**Solución**

**imagen 50**.
