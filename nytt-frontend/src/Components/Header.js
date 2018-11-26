import React from 'react'
import { Link } from 'react-router-dom'

const Header = (props) =>
  <div className="header">
    <Link to="/portfolio"> My Portfolio </Link>
    <span> | </span>
    <Link to="/transactions"> My Transactions </Link>
  </div>

export default Header;
