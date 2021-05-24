import React from 'react';
import ReactDOM from 'react-dom';
import { Home } from './apps';

const appContainer = document.body.appendChild(document.getElementById('react-root'));
const renderMethod = module.hot ? ReactDOM.hydrate : ReactDOM.render;

renderMethod(
  React.createElement(Home),
  appContainer
);
