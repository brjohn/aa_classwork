import React from 'react';
import ReactDOM from 'react-dom';

document.addEventListener('DOMContentLoaded', () => {
    const reactRoot = document.getElementById('react-root');
    ReactDOM.render(<h1>React Thing</h1>, reactRoot);
});
console.log('webpack is running');