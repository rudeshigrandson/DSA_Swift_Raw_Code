# DSA in Swift

Over the next few days, I will be revisiting my Data Structures and Algorithms concepts while implementing them in Swift. Stay tuned as I share my daily progress and insights here, day by day.


#

### Topics Covered till 15 March:
1. Arrays
2. Dictionary
3. Linked List
4. Queue
5. Graph
6. Stacks
7. Trees
8. Trie
9. Infix/Postfix
10. DFS/BFS
11. BST
12. AVL
13. Searching
14. Sorting
15. Heap
16. Radix Sort
17. Dijkstra’s Algorithm
18. Prim’s Algorithm
19. Dynamic Programing 
20. Daily 2 Leet code Question with detail explanaiton 



### 75 Hard Secene 

Complete Striver DSA Sheet Leet code sheet 2 and 3 

## LinkedList

આ કોડ એક generic LinkedList બનાવે છે, જે એક નોડના સંગ્રહને દર્શાવે છે. દરેક નોડ એક value અને next પોઇન્ટર ધરાવે છે, જે આગળના નોડને point કરે છે. નીચે જણાવેલા methods LinkedList પર વિવિધ કાર્યને પ્રદાન કરે છે:

- push(_ value: Value): આ મથોડ નવી value ને લિસ્ટના શરૂઆતમાં (head) એડ કરે છે. આ રીતે, નવું નોડ બનાવાય છે અને તેનું next પોઇન્ટર અગાઉના head ને point કરે છે.

- append(_ value: Value): આ મથોડ નવી value ને લિસ્ટના અંતે (tail) એડ કરે છે. જો લિસ્ટ ખાલી હોય તો head અને tail બંનેને નવું નોડ બનાવવું પડે છે. નહીંતર, tail ના next પોઇન્ટર ને નવું નોડ point કરે છે અને tail ને નવી node પર set કરે છે.
- insert(_ value: Value, after node: Node<Value>): આ મથોડ દર્શાવેલા નોડ પછી નવી value insert કરે છે. એ માટે, એક નવું નોડ બનાવવામાં આવે છે અને તે node ના next પોઇન્ટર ને તે નોડના આગળના next પોઈન્ટર પર set કરવામાં આવે છે.
- pop(): આ મથોડ લિસ્ટના પહેલા નોડ (head) ને દૂર કરે છે. અહીં removeFirst() મથોડને call કરવામાં આવે છે, જે head નોડને દૂર કરે છે અને list માં આગળના નોડને head તરીકે set કરે છે.
- removeLast(): આ મથોડ લિસ્ટના અંતિમ નોડ (tail) ને દૂર કરે છે. જો લિસ્ટમાં ફક્ત એક જ નોડ હોય તો head અને tail બંનેને nil set કરવામાં આવે છે. જો વધુ નોડ હોય, તો head થી tail સુધી વાકડાવવાની પ્રક્રિયા કરવામાં આવે છે અને છેલ્લો નોડ દૂર થાય છે.
- removeFirst(): આ મથોડ લિસ્ટના પ્રથમ નોડ (head) ને દૂર કરે છે. જો લિસ્ટ ખાલી હોય તો એ ખોટો નમ્બર આપે છે. ત્યારબાદ head ને આગળના નોડ પર set કરવામાં આવે છે અને જો head એ tail સાથે મળતો હોય તો tail ને પણ nil set કરવામાં આવે છે.
- remove(after node: Node<Value>): આ મથોડ કોઈ દિગ્દર્શિત નોડ (node) પછીના નોડને દૂર કરે છે. જો નોડ પછીનું નોડ tail હોય તો tail ને તે node પર set કરવામાં આવે છે.
- description method: આ method લિસ્ટના તમામ values ને string format માં return કરે છે, જેથી list ને display કરવું સરળ બને.

આ રીતે, આ LinkedList માં નોડને जोड़વાનો, દૂર કરવાનો અને ઍક્સેસ કરવાની પદ્ધતિઓ પૂરી પાડવામાં આવે છે.