import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

const store = configureStore();

document.addEventListener('DOMContentLoaded', () => {
    window.store = store;
    const reactRoot = document.getElementById('react-root');
    ReactDOM.render(<h1>To-Do's App</h1>, reactRoot);
})