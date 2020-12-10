
module Stepable

    def moves
        all_moves = []
        curr_pos = self.pos 
        move_diffs.each do |unit_move|
            new_x = curr_pos[0] + unit_move[0]
            new_y = curr_pos[1] + unit_move[1]
            new_arr = [new_x, new_y]
            all_moves << new_arr if self.board.valid_pos?(new_arr)
        end
        all_moves
    end

    #def moves_diffs
    #end

end