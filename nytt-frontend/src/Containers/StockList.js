import React, { Component } from 'react'
import StockRow from '../Components/StockRow.js'

class StockList extends Component {

  state = {
    userStocks: []
  }

  componentDidMount() {
    fetch('http://localhost:4000/api/v1/users/1')
    .then(res => res.json())
    .then(json => this.setState({
      userStocks: json.stocks
    }))
  }

  displayStocks = () => {
    //console.log(this.state.userStocks)
    if (this.state.userStocks.length === 0)  {
      return null
    } else {
      return this.state.userStocks.map((stock) => <StockRow key={stock.id} stock={stock} />)
    }
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
