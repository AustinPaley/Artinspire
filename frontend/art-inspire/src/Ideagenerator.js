import React, { Component } from 'react';
import './App.css';

const ARTTYPES = "http://localhost:4000/api/v1/arttypes"
const ARTADJECTIVES = "https://od-api.oxforddictionaries.com/api/v1/wordlist/en/lexicalCategory%3Dadjective%3Bdomains%3DArt?limit=5000"


class IdeaGenerator extends Component {
  constructor(props){
    super(props)
    this.state= {
      words: [],
      chosenWord: "",
      artAdjectives: []
    }
  }

  componentDidMount(){
    fetch(ARTTYPES)
    .then(res => res.json())
    .then(res => this.setState({
      words: res.map(obj => obj.name)
    }))

    fetch(ARTADJECTIVES, {
      headers:{
        'Content-Type': 'text/html',
        "app_key" : "ffee9dee04174ca8122cbcff8cbe5cfd",
        "app_id" : "8ac98e63",
      }
    })
    .then(res => res.json())
    .then(res => {debugger})

  }

  handleClick = (event) => {
    this.setState({
      chosenWord: this.state.words[Math.floor(Math.random() * this.state.words.length)]})
  }

  render() {
    return (
      <div className="Ideas">
      <button onClick={this.handleClick}>Generate Idea!</button>
      <br/><br/>
      {this.state.chosenWord === ""
      ?
      null
      :
        <div>
        <h2>Your Project Should Have: </h2>
        <br/><br/>
        <div><span className="subtitles">Medium:</span> {this.state.chosenWord}</div>
        </div>
      }
      </div>
    )
  }
}

export default IdeaGenerator;
