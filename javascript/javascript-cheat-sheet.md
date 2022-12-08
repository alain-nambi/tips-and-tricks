35 méthodes essentielles dans ce Cheat Sheet Javascript
=======================================================

[](#string-et-array-javascript)string et array javascript
---------------------------------------------------------

Ces méthodes permettent de créer des copies de l’original sauf `spice` qui le modifie.

[](#slice)slice
---------------

Crée un nouveau tableau ou une nouvelle string partir du premier indice passe en parametre, jusqu’au second indice (ou à la fin, si il n’y a pas de deuxieme element en parametre)

    console.log([1, 2, 3].slice(0, 1))
    
    // Résultat : 1

[](#split-javascript)split javascript
-------------------------------------

Converti une chaîne de caractères en un tableau, en la divisant par le caractère que vous fournissez

    console.log("un-deux".split("-"))
    
    // Résultat : ["un", "deux"]

[](#join-array-javascript)join array javascript
-----------------------------------------------

Joint les elements d’un tableau en une chaîne de caractères, si une string est passe en parametre, les elements du tableaux sont relies par cette string

    ;["un", "deux"].join("-")
    
    // Résultat : "un-deux"

[](#arrays-splice)arrays splice
-------------------------------

Splice prend un index en premier parametre en un nombre d’elements a extraire du tableau en deuxieme parametre. Cette methode modifie le tableau de base et peut aussi prendre un troisieme parametre qui est ajoute au tableau de base.

    let tableau = ["a", "b", "c"]
    console.log(tableau.splice(0, 1))
    
    // Résultat : 'a'
    // Side-effect : la variable tableau est modifiée et devient ['b', 'c']
    // Expications : on indique qu'on se place a l'indice 0 du tableau ('a') et qu'on veut sortir 1 element ('a'). Le tableau initial est modifié en ['b', 'c'] et la méthode return 'a'.

arrow function js
---------------------------------------

Pour avoir une arrow function, remplacez le mot-clé `function` par `=>`.

arrow function declaration
---------------------------------------------------------

Contrairement à une fonction régulière, vous devez stocker une arrow function dans une variable pour la sauvegarder. Ainsi

    const somme = (a, b) => {
      return a + b
    }

est identique a

    function somme(a, b) {
      return a + b
    }

arrow function en une ligne “sans” return
-------------------------------------------------------------------------------------

Si votre arrow function peut tenir sur une ligne, vous pouvez supprimer les parenthèses ET renvoyer la déclaration (le renvoi est automatique)

    ;(a, b) => a + b

arrow function multi-lignes “sans” return
-------------------------------------------------------------------------------------

L’utilisation de parenthèses permet d’avoir des fonctions de plusieures lignes avec un retour implicite

    ;(a, b) => a + b

arrow function un seul parametre
---------------------------------------------------------------------

Si vous n’avez qu’un seul paramètre, pas besoin des parenthèses autour de vos paramètres

    mot => mot.toUpperCase()

Les Objects en Javascript
-------------------------------------------------------

Stockage et récupération puissants et rapides

string literal javascript
-------------------------------------------------------

Cela vous donne littéralement la valeur de la clé `"a"`

    obj.a ou obj["a"]

javascript object literal
-------------------------------------------------------

Mais cela vous donne la valeur de la clé stockée dans la variable `a`

    obj[a]

javascript for in
---------------------------------------

Boucle sur les clés d’un objet avec un `for...in` vous pouvez ensuite acceder aux valeurs de l’objet en utilisant `obj[key]`.

    for (let key in obj) ...

javascript object keys
-------------------------------------------------

Obtenez facilement les clés d’un objet dans un tableau avec `Object.keys()`, ou les valeurs avec `Object.values()`

    console.log(Object.keys({ a: 1, b: 2 }))
    
    // Résultat : ["a", "b"]

javascript destructuring
-----------------------------------------------------

La déstructuration permet de retirer des valeurs des objets, la clé devient son nom de variable

    const { a } = { a: 1 }
    console.log(a)
    
    // Résultat : 1

destructuring
-------------------------------

Ca fonctionne aussi dans l’autre sens, si la variable `a` vaut `1`, on peut creer un objet comme ca :

    const a = 1
    const obj = { a }
    console.log(obj)
    
    // Résultat : {a: 1}

Javascript array method
---------------------------------------------------

Ces méthodes permettent AUSSI de créer des copies de l’original sauf pour le `sort` qui le modifie.

map javascript
---------------------------------

Exécute la fonction une fois par élément dans le tableau. Retourne chaque valeur de retour dans un nouveau tableau, au même endroit.

    console.log([1, 2, 3].map(n => n + 1))
    
    // Résultat : [2, 3, 4]

La méthode forEach en JavaScript
--------------------------------------------------------------------------

La méthode `forEach` permet d’exécuter une fonction donnée sur chaque élément d’un tableau.

La syntaxe complète de la fonction est :

`tableau.forEach(callback, unAutreThis)`

`callback` : la fonction à utiliser pour chaque élément du tableau

*   `valeur` : l’élément qu’on est entrain de parcourir
*   `index (facultatif)` : l’indice de l’élément qu’on est entrain de parcourir
*   `tableau (facultatif)` : le tableau en entier

`unAutreThis (facultatif)` : la valeur de `this` à utiliser dans la fonction callback

Appliquer à un tableau, la méthode `forEach` retourne toujours `undefined`.

Exemples :

    const monTableau = [1, 2, 3]
    
    monTableau.forEach((valeur, index) =>
      console.log(`monTableau[${index}] = ${valeur}`)
    )
    
    // monTableau[0] = 1
    // monTableau[1] = 2
    // monTableau[2] = 3

    const monTableau = [1, 2, 3, 4, 5];
    let somme = 0;
    
    monTableau.forEach(valeur =>
      somme += valeur;
    );
    
    console.log(somme);  // 15

filter javascript
---------------------------------------

Exécute la fonction une fois par élément, si faux, l’élément ne sera pas inclus dans le nouveau tableau, si vrai, il sera.

    console.log([1, 2, 3].filter(n => n > 1))
    
    // Résultat : [2, 3]

javascript reduce
---------------------------------------

Fonctionne une fois par item, votre valeur de retour devient l’accumulation des itérations precedantes à l’itération suivante. L’accumulateur commence à 0 par défaut mais vous pouvez le changer avec un 2e arg optionnel.

    console.log([1, 2, 3].reduce((a, val) => a + val))
    
    // Résultat : 6
    // Explication : 1 + 2 + 3 = 6

> Vous voulez en apprendre plus sur cette méthode ? Alors mon article sur reduce en JavaScript est fait pour vous !

sort array javascript
-----------------------------------------------

Trie le tableau en place, par défaut par ordre numérique (ou alphabétique) croissant. Passer une fonction de comparaison à 2 arguments (optionnel) permet de classer les éléments dans un ordre décroissant, ou personnalisé.

    console.log([3, 1, 2].sort())
    
    // Résultat : [1, 2, 3]

[](#manipuler-le-dom)Manipuler le DOM
-------------------------------------

![Manipuler le DOM](/static/e41a9c2a5441e6d63acd6ce700412acb/b17f8/manipuler-le-dom.jpg "Manipuler le DOM")

Pour chaque balise HTML, il existe un nœud Document Object Model (DOM)

[](#cr%C3%A9er-un-element-dans-le-dom)Créer un element dans le dom
------------------------------------------------------------------

Créer un élément HTML avec JavaScript, renvoie un objet `ELEMENT_HTML`.

    document.createElement("div")

[](#appliquer-sur-style-a-un-element-html)Appliquer sur style a un element HTML
-------------------------------------------------------------------------------

Vous pouvez modifier les styles CSS d’un objet `ELEMENT_HTML`.

    ELEMENT_HTML.style.color = "pink"

[](#ajouter-un-nom-de-classe-en-javascript)Ajouter un nom de classe en javascript
---------------------------------------------------------------------------------

Ajouter ou supprimer les classes CSS d’un element html.

    ELEMENT_HTML.classList.add(".maClass")

[](#mettre-du-contenu-dans-une-balise-html-avec-js)Mettre du contenu dans une balise html avec js
-------------------------------------------------------------------------------------------------

Permet de définir le contenu HTML ou le texte a l’interieur d’une balise html.

    ELEMENT_HTML.innerHTML = "<div>coucou</div>"
    ELEMENT_HTML.innerText = "coucou"

[](#ajouter-un-enfant-en-js)Ajouter un enfant en js
---------------------------------------------------

Vous pouvez ajouter des elements html a un autre element html.

    ELEMENT_HTML_A.appendChild(ELEMENT_HTML_B)

[](#selectionner-un-element-html)Selectionner un element html
-------------------------------------------------------------

Selectionner le premier element HTML qui correspond dans le DOM - les deux “.class” et “#id” fonctionnent !

    document.querySelector("#mon-id")

[](#selectionner-tous-les-elements-de-class)Selectionner tous les elements de class
-----------------------------------------------------------------------------------

Même chose que ci-dessus, mais renvoie tous les match dans une liste d’elements html.

    document.querySelectorAll(".ma-class")

[](#ajouter-des-event-listener)Ajouter des event listener
---------------------------------------------------------

Ajouter des listeners aux événements des utilisateurs, comme les clics. La fonction s’exécute lorsque l’événement se produit.

    ELEMENT_HTML.addEventListener("click", () => {...})

![Async](/static/d93e2fcb713c546465cec5e5c9c54856/b17f8/async.jpg "Async")

[](#fetch-js)fetch js
---------------------

Fetch renvoie une promesse, qui n’est pas bloquante, en d’autres termes, votre code continue. On parle d’asynchone.

    fetch("https://google.com")

[](#promise-then)Promise .then
------------------------------

Quand la promesse est resolue, utilisez une méthode `.then` pour utiliser son résultat dans le premier parametre

    PROMISE.then(result => console.log(result))

[](#plusieurs-then-dans-une-promise)Plusieurs .then dans une promise
--------------------------------------------------------------------

Un bloc then peut aussi retourner une promesse, auquel cas nous pouvons y ajouter un autre bloc.

    PROMISE.then(...).then(...)

[](#gestion-derreur-dans-les-promise)Gestion d’erreur dans les promise
----------------------------------------------------------------------

Ajouter une méthode `catch` à une promesse, ou une chaîne de promesses pour traiter toute erreur qui pourrait se produire.

    PROMISE.catch(err => console.error(err))

[](#r%C3%A9soudre-toutes-les-promesses-avec-promiseall)Résoudre toutes les promesses avec promise.all
-----------------------------------------------------------------------------------------------------

Vous pouvez faire passer plusieurs promesses dans la fonction `Promise.all`. En joignant un bloc `.then`, vous obtiendrez le résultat de toutes les promesses, dans un seul tableau.

    Promise.all([fetch(...), fetch(...)].then(resultats => ...)

[](#async-await)async await
---------------------------

`async await` est une syntaxe plus propre pour les promesses, au lieu de `.then` en serie, utilisez simplement le mot-clé `await`, qui bloquera votre code jusqu’à ce que la promesse se resolve …

    const res = await fetch(URL)

[](#fonctions-async-await)fonctions async await
-----------------------------------------------

Les mots-clés `await` doivent être à l’intérieur d’une fonction `async` - il suffit d’ajouter le mot-clé `async` avant toute fonction, ou la définition d’une arrow function dans laquelle vous voulez utiliser `await`

    const getURL = async URL => await fetch(URL)

Je m'appelle Thomas. J'ai commencé à coder dans mon enfance. Depuis ma sortie de la première promo de l'École 42, j'ai développé des centaines d'applications et sites web. Sur ce blog, je vous donne les meilleurs conseils et astuces pour apprendre comment apprendre à coder efficacement.

* * *

#### Table des matières

- [35 méthodes essentielles dans ce Cheat Sheet Javascript](#35-méthodes-essentielles-dans-ce-cheat-sheet-javascript)
  - [string et array javascript](#string-et-array-javascript)
  - [slice](#slice)
  - [split javascript](#split-javascript)
  - [join array javascript](#join-array-javascript)
  - [arrays splice](#arrays-splice)
  - [arrow function js](#arrow-function-js)
  - [arrow function declaration](#arrow-function-declaration)
  - [arrow function en une ligne “sans” return](#arrow-function-en-une-ligne-sans-return)
  - [arrow function multi-lignes “sans” return](#arrow-function-multi-lignes-sans-return)
  - [arrow function un seul parametre](#arrow-function-un-seul-parametre)
  - [Les Objects en Javascript](#les-objects-en-javascript)
  - [string literal javascript](#string-literal-javascript)
  - [javascript object literal](#javascript-object-literal)
  - [javascript for in](#javascript-for-in)
  - [javascript object keys](#javascript-object-keys)
  - [javascript destructuring](#javascript-destructuring)
  - [destructuring](#destructuring)
  - [Javascript array method](#javascript-array-method)
  - [map javascript](#map-javascript)
  - [La méthode forEach en JavaScript](#la-méthode-foreach-en-javascript)
  - [filter javascript](#filter-javascript)
  - [javascript reduce](#javascript-reduce)
  - [sort array javascript](#sort-array-javascript)
  - [Manipuler le DOM](#manipuler-le-dom)
  - [Créer un element dans le dom](#créer-un-element-dans-le-dom)
  - [Appliquer sur style a un element HTML](#appliquer-sur-style-a-un-element-html)
  - [Ajouter un nom de classe en javascript](#ajouter-un-nom-de-classe-en-javascript)
  - [Mettre du contenu dans une balise html avec js](#mettre-du-contenu-dans-une-balise-html-avec-js)
  - [Ajouter un enfant en js](#ajouter-un-enfant-en-js)
  - [Selectionner un element html](#selectionner-un-element-html)
  - [Selectionner tous les elements de class](#selectionner-tous-les-elements-de-class)
  - [Ajouter des event listener](#ajouter-des-event-listener)
  - [fetch js](#fetch-js)
  - [Promise .then](#promise-then)
  - [Plusieurs .then dans une promise](#plusieurs-then-dans-une-promise)
  - [Gestion d’erreur dans les promise](#gestion-derreur-dans-les-promise)
  - [Résoudre toutes les promesses avec promise.all](#résoudre-toutes-les-promesses-avec-promiseall)
  - [async await](#async-await)
  - [fonctions async await](#fonctions-async-await)
      - [Table des matières](#table-des-matières)
        - [PLAN DU SITE](#plan-du-site)
        - [CATÉGORIES](#catégories)
        - [ARTICLES POPULAIRES](#articles-populaires)
        - [RÉSEAUX SOCIAUX](#réseaux-sociaux)

##### PLAN DU SITE

[Comment Coder](/)

[Blog](/blog/)

[À propos](/a-propos/)

[Note affiliation](/note-affiliation/)

[Politique de Confidentialité](/mentions-legales/)

##### CATÉGORIES

[Python](/python/)

[JavaScript](/javascript/)

[Créer des Bots](/creer-bot/)

[Apprendre à coder](/apprendre-programmation/)

[Développer des apps](/developpement-web-mobile/)

##### ARTICLES POPULAIRES

[Comment coder un NFT ?](/creer-nft/)

[9 idées de projets Python](/projets-python-debutants/)

[11 idées de projets en JS](/projets-javascript-debutants/)

[Meilleurs Livres Python](/livres-python/)

[Apprendre React.js](/apprendre-react/)

##### RÉSEAUX SOCIAUX

[YouTube](https://www.youtube.com/channel/UCEztUC2WwKEDkVl9c6oUoTw)

[Tiktok](https://tiktok.com/@commentcoder)

[LinkedIn](https://linkedin.com/company/commentcoder)

[Github](https://github.com/commentcoder)

[Flux RSS](/rss.xml)

©2022 commentcoder.com. Créé avec ❤️ par [Comment Coder](/) avec Gatsby.js

if(true) { (function(i,s,o,g,r,a,m){i\['GoogleAnalyticsObject'\]=r;i\[r\]=i\[r\]||function(){ (i\[r\].q=i\[r\].q||\[\]).push(arguments)},i\[r\].l=1\*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)\[0\];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','https://www.google-analytics.com/analytics.js','ga'); } if (typeof ga === "function") { ga('create', 'UA-168665783-1', 'auto', {}); } if(true) { window.dataLayer = window.dataLayer || \[\]; function gtag(){window.dataLayer && window.dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'G-S0HN408MYL', {"send\_page\_view":false}); } /\*<!\[CDATA\[\*/window.pagePath="/cheat-sheet-javascript/";window.\_\_\_webpackCompilationHash="87badeb23e20a2346f09";/\*\]\]>\*//\*<!\[CDATA\[\*/window.\_\_\_chunkMapping={"polyfill":\["/polyfill-27897be138185b18493c.js"\],"app":\["/app-8f8dee3c09207da84286.js"\],"component---src-pages-404-js":\["/component---src-pages-404-js-3cc0fde4a02d822b8a8b.js"\],"component---src-pages-a-propos-js":\["/component---src-pages-a-propos-js-05f3406c7f14315b76b2.js"\],"component---src-pages-blockchain-js":\["/component---src-pages-blockchain-js-fae30d65a5cfb4f3a5e8.js"\],"component---src-pages-blog-js":\["/component---src-pages-blog-js-250a019e0e306cec34aa.js"\],"component---src-pages-index-js":\["/component---src-pages-index-js-5fbefa3c216f44bf5dd7.js"\],"component---src-pages-javascript-js":\["/component---src-pages-javascript-js-f3bc8de40bd104e1ef78.js"\],"component---src-pages-mentions-legales-js":\["/component---src-pages-mentions-legales-js-b64c9155f5a37182202e.js"\],"component---src-pages-merci-js":\["/component---src-pages-merci-js-6b4ff08df275484fd3dd.js"\],"component---src-pages-newsletter-js":\["/component---src-pages-newsletter-js-d885dee7f44ceaa84181.js"\],"component---src-pages-note-affiliation-js":\["/component---src-pages-note-affiliation-js-cded0fda10b680a61ad7.js"\],"component---src-pages-python-js":\["/component---src-pages-python-js-d40b15329a89f3e45345.js"\],"component---src-pages-ressources-js":\["/component---src-pages-ressources-js-6c2a8260d28f948febc7.js"\],"component---src-templates-blog-post-js":\["/component---src-templates-blog-post-js-5e7e7cd9d4a38c70476e.js"\]};/\*\]\]>\*/