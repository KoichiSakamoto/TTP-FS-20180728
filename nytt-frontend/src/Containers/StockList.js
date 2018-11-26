import React, { Component } from 'react'
import StockRow from '../Components/StockRow.js'

class StockList extends Component {

  displayStocks = () => {
    return <StockRow stock={{tickername: "AYY", quantity: 500}} />
  }

  render() {
    return (
      <div>
        {this.displayStocks()}
      </div>
    )
  }
}

export default StockList
