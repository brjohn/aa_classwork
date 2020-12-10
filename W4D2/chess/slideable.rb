
module Slideable
    HORIZONTAL_DIRS = [[0,1], [0, -1], [ 1, 0], [-1,0]]
    DIAGONAL_DIRS = [[1,1], [-1,-1], [-1,1], [1, -1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        all_moves = []
        move_dirs.each {|unit_move| all_moves += grow_unblocked_moves_in_dir(unit_move[0], unit_move[1])}
        #should I << or += ???
        all_moves
    end

    # private
    # def move_dirs
    #     overwritten in subclass - do I even need this here???
    # end

    def grow_unblocked_moves_in_dir(dx, dy) #dx = 0, dy = 1
        curr_pos = self.pos
        all_dir_moves = []
        while self.board.valid_pos?(curr_pos) 
            new_x = curr_pos[0] + dx
            new_y = curr_pos[1] + dy
            new_arr = [new_x, new_y]
            all_dir_moves << new_arr if self.board.valid_pos?(new_arr)
            curr_pos = new_arr
        end
        all_dir_moves
    end
end