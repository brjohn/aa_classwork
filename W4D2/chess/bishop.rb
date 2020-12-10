require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
    include Slideable
    
    def symbol
        return :Bp 
    end

    private
    def move_dirs
        self.diagonal_dirs
    end

end