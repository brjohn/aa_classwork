require_relative 'piece'


class Pawn < Piece

    def symbol
        return :Pn
    end

    def moves
        all_moves = []
        curr_pos = self.pos 
        forward_dir.each do |unit_move|
            new_x = curr_pos[0] + unit_move[0]
            new_y = curr_pos[1] + unit_move[1]
            new_arr = [new_x, new_y]
            all_moves << new_arr if self.board.valid_pos?(new_arr)
        end
        all_moves
    end

    private
    def at_start_row?
        if self.color == :black
            self.pos[1] == 1
        else
            self.pos[1] == 6
        end
    end

    def forward_dir
        forward_steps + side_attacks
    end

    def forward_steps
        if self.color == :black
            return [[0, 1], [0, 2]]
        else
            return [[0,-1], [0,-2]]
        end
    end

    def side_attacks
        if self.color == :black
            return [[-1,1], [1,1]]
        else
            return [[-1,-1], [1,-1]]
        end
    end

end