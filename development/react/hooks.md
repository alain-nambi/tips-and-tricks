Génerée par ChatGPT
-------------------

Un hook est une fonction spéciale dans React qui vous permet d'ajouter des fonctionnalités à des composants React sans écrire de code supplémentaire pour gérer l'état et les effets secondaires. Les hooks permettent aux développeurs de réutiliser du code logique entre différents composants et de partager de la logique de niveau supérieur dans l'application.

Voici une liste de certains des hooks les plus couramment utilisés dans React, avec des exemples concis :

1. `useState` : ce hook vous permet de gérer l'état local dans un composant.

```javascript
import React, { useState } from 'react';

function Example() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
```

2. `useEffect` : ce hook vous permet de déclencher des effets secondaires dans un composant.

```javascript
import React, { useState, useEffect } from 'react';

function Example() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `You clicked ${count} times`;
  });

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
```

3. `useContext` : ce hook vous permet de consommer le contexte dans un composant.

```javascript
import React, { useContext } from 'react';

const ThemeContext = React.createContext('light');

function Example() {
  const theme = useContext(ThemeContext);

  return (
    <div>
      <p>The theme is {theme}</p>
    </div>
  );
}
```

4. `useRef` : ce hook vous permet de créer une référence à une valeur qui persiste entre les différents rendus du composant.

```javascript
import React, { useRef } from 'react';

function Example() {
  const inputRef = useRef(null);

  function handleClick() {
    inputRef.current.focus();
  }

  return (
    <div>
      <input type="text" ref={inputRef} />
      <button onClick={handleClick}>
        Focus the input
      </button>
    </div>
  );
}
```

Il existe de nombreux autres hooks, tels que useReducer, useCallback, useMemo, etc. Chacun de ces hooks a un usage spécifique et est très utile pour des scénarios spécifiques.

5. `useReducer` : ce hook vous permet de gérer l'état de l'application de manière plus structurée en utilisant une fonction de réduction.

```javascript
import React, { useReducer } from 'react';

function reducer(state, action) {
  switch (action.type) {
    case 'increment':
      return { count: state.count + 1 };
    case 'decrement':
      return { count: state.count - 1 };
    default:
      throw new Error();
  }
}

function Example() {
  const [state, dispatch] = useReducer(reducer, { count: 0 });

  return (
    <div>
      <p>Count: {state.count}</p>
      <button onClick={() => dispatch({ type: 'increment' })}>
        Increment
      </button>
      <button onClick={() => dispatch({ type: 'decrement' })}>
        Decrement
      </button>
    </div>
  );
}
```

6. `useCallback` : ce hook vous permet de mémoriser une fonction pour éviter de la recréer à chaque rendu du composant.

```javascript
import React, { useState, useCallback } from 'react';

function Example({ items }) {
  const [selectedId, setSelectedId] = useState(null);

  const handleClick = useCallback(id => {
    setSelectedId(id);
  }, []);

  return (
    <ul>
      {items.map(item => (
        <li key={item.id} onClick={() => handleClick(item.id)}>
          {item.text}
        </li>
      ))}
    </ul>
  );
}
```

7. `useMemo` : ce hook vous permet de mémoriser le résultat d'une fonction pour éviter de la recalculer à chaque rendu du composant.

```javascript
import React, { useState, useMemo } from 'react';

function Example({ items }) {
  const [filter, setFilter] = useState('');

  const filteredItems = useMemo(() => {
    return items.filter(item => item.text.includes(filter));
  }, [items, filter]);

  return (
    <div>
      <input type="text" value={filter} onChange={e => setFilter(e.target.value)} />
      <ul>
        {filteredItems.map(item => (
          <li key={item.id}>
            {item.text}
          </li>
        ))}
      </ul>
    </div>
  );
}
```