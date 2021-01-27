import React from 'react';
import * as Minesweeper from '../minesweeper';

class Game extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      board: new Minesweeper.Board()             //object that we continiously update over the course of the game
    }
  }
  updateGame() {

  }

  render (){
    return (
      <div>
        <section>Trying to render a board here</section>
      </div>
    )
  }
}

export default Game;