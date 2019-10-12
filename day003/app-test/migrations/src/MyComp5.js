import React, { Component } from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCircle as fasCircle } from '@fortawesome/free-solid-svg-icons'
import { faCircle as farCircle } from '@fortawesome/free-regular-svg-icons'

class MyComp extends Component {

  state = {
    filled : false
  }
  constructor(props){
    super(props)
  }

  handleClick = () => {
    //chage state
    this.setState({filled : !this.state.filled})
    console.log('click', this.state.filled)

    //no changed state
    /*
    if(this.state.filled) {
      this.state.filled = false
    } else {
      this.state.filled = true
    }
    */
  }


  render () {
    return (
        <div className="box">
           <Circle filled={this.state.filled} handleClick = {this.handleClick} />
       </div>
     )
  }
}
const Circle = function (props){
  return (
    <div onClick={props.handleClick}>
        <FontAwesomeIcon icon={props.filled ? fasCircle : farCircle} size="3x" />
    </div>
  )
}

export default MyComp;
