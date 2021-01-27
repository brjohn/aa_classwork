import React from 'react';
import * as Minesweeper from '../minesweeper';


class Tile extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            stub: "T"
        }
    }

    render(){
        return(
            <div class="tileStub">
                {this.state.stub}
            </div>
        )
    }
}

export default Tile;