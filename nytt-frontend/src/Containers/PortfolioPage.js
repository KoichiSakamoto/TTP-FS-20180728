import React, { Component } from 'react';
import Header from '../Components/Header.js'
import StockList from './StockList.js'

export default class PortfolioPage extends Component {

  render() {
    return (
      <div>
        <Header />
        <h1> PortfolioPage! </h1>
        <StockList />
      </div>
    )
  }
}
