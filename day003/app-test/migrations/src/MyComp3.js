import React, {Component} from 'react'
import PropTypes from 'prop-types'

class MyComp extends Component {
  constructor(props){
    super(props);
  }

  render () {
    return (<h2>jasuil, {this.props.name}</h2>)
  }
}
MyComp.defaultProps = {
  name: 'jasuil'
}
MyComp.propTypes = {
  name: PropTypes.string.isRequired
}
export default MyComp;
