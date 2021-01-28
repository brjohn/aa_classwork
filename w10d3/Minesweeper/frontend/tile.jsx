import React from 'react';
import * as Minesweeper from '../minesweeper';


class Tile extends React.Component {
    constructor(props){
        super(props);
        // this.state = {
        //     stub: "T"
        // }
    }

    handleClick(e){
        // this.props.updateGame(this, true)
    }

    render(){
        const tileText = "tile unexplored";
        if (this.explored){
            tileText = "tile explored";
        }else if (this.flagged){
            tileText = "tile flagged";
        }else if (this.bombed){
            tileText = "tile bombed";
        }


        
        return(
            <div className={`${tileText}`} onClick={this.handleClick}>
                {/* {this.state.stub} */}
                
            </div>
        )
    }
}

export default Tile;