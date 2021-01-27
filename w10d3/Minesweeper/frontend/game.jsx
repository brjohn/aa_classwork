import React from 'react';
import * as Minesweeper from '../minesweeper';
import Board from './board';

class Game extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      board: new Minesweeper.Board(9, 40)             //object that we continiously update over the course of the game
    }
  }
  updateGame() {

  }

  render (){ 
    console.log(this.state.board);
    return (
     
      <div>
        <Board board={this.state.board} updateGame={this.updateGame}/>
      </div>
    )
  }
}

export default Game;