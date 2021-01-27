import React from 'react';
import * as Minesweeper from '../minesweeper';
import Tile from './tile';

class Board extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            grid: this.props.board.grid 
        }
    }

    render(){
        <div>
            const arr = {this.state.grid.map(row => {
                <p>row</p>
                row.forEach(tile => {
                    // as a child of the row, add a tile span
                    // {<Tile/>{this.state.tile}}
                })
            })}
        </div>
    }
}

export default Board;