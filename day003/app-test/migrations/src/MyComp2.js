import React, {Component} from 'react'

class MyComp2 extends Component {

  constructor(props) {
    super(props);
    this.str = '성일짱 짱성일 2';
  }
  render () {
    return (
      <h1>{this.str}</h1>
    )
  }

}

export default { MyComp2 };
