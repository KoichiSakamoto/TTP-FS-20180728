import React, { Component } from 'react';
import RegisterForm from '../Components/RegisterForm.js'
import LoginForm from '../Components/LoginForm.js'

export default class WelcomePage extends Component {

  state = {
    LoginOrRegister: ""
  }

  LoginButton = () => {
    return (<button type="button" onClick={() => this.setState({LoginOrRegister: "Login"})}> Login </button>)
  }

  RegisterButton = () => {
    return (<button type="button" onClick={() => this.setState({LoginOrRegister: "Register"})}> Register </button>)
  }

  displayButtons = () => {
    switch (this.state.LoginOrRegister) {
      case "Login":
        return (<LoginForm />)
      case "Register":
        return (<RegisterForm />)
      default:
        return (<div> {this.LoginButton()} | {this.RegisterButton()} </div>)
    }
  }



  render() {
    return (
      <div>
        {this.displayButtons()}
      </div>
    )
  }
}
