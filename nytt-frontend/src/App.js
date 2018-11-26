import React, { Component } from 'react';
import './App.css';
import { BrowserRouter, Route } from 'react-router-dom'
import PortfolioPage from './Containers/PortfolioPage.js'
import TransactionsPage from './Containers/TransactionsPage.js'
import WelcomePage from './Containers/WelcomePage.js'

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div className="App">
          <Route path="" component={WelcomePage} exact/>
          <Route path="/portfolio" component={PortfolioPage}/>
          <Route path="/transactions" component={TransactionsPage}/>
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
