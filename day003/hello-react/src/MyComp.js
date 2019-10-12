import React from 'react'
import PropTypes from 'prop-types'

class MyComp extends React.Component {

  constructor(props) {
    super(props);
    this.str = '성일짱 짱성일';
  }
  render () {
    return (
      <h1>{this.str}</h1>
    )
  }

}

export default MyComp;
