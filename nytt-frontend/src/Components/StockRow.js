import React from 'react'

const StockRow = (props) => 
  <div> {props.stock.tickername}, {props.stock.quantity} </div>


export default StockRow
