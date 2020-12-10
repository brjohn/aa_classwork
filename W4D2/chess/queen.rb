require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
    include Slideable
    
    def symbol
        return :Qn 
    end

    private
    def move_dirs
        self.horizontal_dirs + self.diagonal_dirs
    end

end