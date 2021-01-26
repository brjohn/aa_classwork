import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock';


document.addEventListener('DOMContentLoaded', () => {
    const reactRoot = document.getElementById('react-root');
    ReactDOM.render(<Clock/>, reactRoot);
});

