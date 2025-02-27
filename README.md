### Lógica Computacional
# Práctica 01: Introducción a Haskell 

- Solares Ramos Luis Mario
- Morales Sánchez Jennifer Lillian
- Hernández Torres Marco Antonio

1. Primeras Vocales:
La idea es que con las funciones auxiliares getVowels & getConsonants podamos resolver este problema, con la primera podemos identificar las vocales de una cadena, con la segunda obtenemos las consonantes de la cadena, ambas con orden, concatenandolas la cadena esta ordenada de la forma deseada. 

2. Anagrama:
Primero eliminamos los espacios de ambas cadenas, despues con la función sort, las ordenamos, para despues compararlos y dar un resultado.

3. Sufijo comun
Se usaron dos funciones auxiliares, invertedWord se encarga de invertir cada cadena en la lista y commonPrefix para encontrar el prefijo en común entre las cadenas. En la función de sufijo común se invierten las cadenas con invertedWord y con foldl aplicamos la función commonPrefix a todas las cadenas (que ya están invertidas), de esta forma se van acumulando los caracteres que sean prefijo común. Así, una vez obtenido el prefijo común, se invierte este resultado para que tengamos el sufijo en común. Usamos foldl ya que foldl hace el plegamiento de izquierda a derecha, y como queremos econtrar el prefijo, hace que sea más facil llegar al elemento donde ya no sean iguales, pues ya no tendrá que hacer tantas comparaciones, ya que si usaramos foldr, como es de derecha a izquierda, tendría que hacer todo el recorrido de la lista primero, lo que sería menos eficiente.

4. Intersección de Listas:
Tomamos dos listas y devuelve una lista nueva que tiene los elementos que aparecen en ambas sin elementos duplicados.recorre la segunda lista ys con un acumulador que empieza vacío y para cada elemento en la lista ys verifica dos que y este en la primera lista xs y que y no este en el acumulador para evitar duplicas de elementos y si no, lo deja como esta, si se satisfacen las condiciones se añade y al final del acumulador para asi meterlo a la lista.

5. Ackermam
Se usó la definición recursiva de esta función y se usaron guards para tratar cada caso en el que nos encontremos, ya sea cuando m es 0, cuando n es 0 o cuando ni m ni n son cero.

6. Ordenamiento rapido
Se tiene un elemento que será nuestro pivote, de aquí la lista se divide en dos partes, la parte izquierda contiene a los elementos menores o iguales al pivote y la parte derecha contiene a los elementos mayores al pivote, después se hace una llamada recursiva para que se repita el proceso en cada sublista generada hasta que todas las sublistas estén ordenadas. Al final, se concatenan la lista izquierda con la lista que contiene al pivote y la lista derecha.

7. Busqueda arbol binario de busqueda
Busca un elemento en el árbol y despues compara el valor el elemento y empieza a buscar comparando el nodo actual del arbol y despues verifica en qué rama continuará desde la izquierda hasta la derecha para hallar el elemento.

8. Insercion del arbol binario
Inserta un elemento en el arbol binario de busqueda respetando el orden de los elementos, despues a los elementos menores o iguales se colocan a la izquierda del subarbol izquierdo y los mayores a la derecha del subarbol derecho.

9. Mapa del arbol binario
Aplica la función a cada elemento del árbol verificando si es vacio, en caso contrario crea un nuevo árbol con los resultados de la función generando así el mapa

10. Altura del arbol binario
Calcula la altura del árbol de forma recursiva donde usa el máximo entre las alturas de los subárboles tanto izquierdo como derecho y suman 1 para el nodo actual.
