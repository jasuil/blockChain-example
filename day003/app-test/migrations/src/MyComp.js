import React from 'react'
import {Staff, Employee} from './testConst'

class MyComp extends React.Component {

  constructor(props) {
    super(props);
    this.str = '성일짱 짱성일 1';
    Staff();
    Employee();
  }
  render () {
    return (
      <h1>{this.str}</h1>
    )
  }

}


//import React, {Component} from 'react'

class MyComp2 extends React.Component {

  constructor(props) {
    super(props);
    this.str = '성일짱 짱성일 2';

    console.log(22)
  }
  my2(){
    console.log(222)
  }
  render () {
    return (
      <h1>{this.str}</h1>
    )
  }

}

//안됨, react는  Component export only one
//export   { MyComp, MyComp2 };
export default MyComp;
