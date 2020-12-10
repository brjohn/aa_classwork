require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
    include Stepable

    def symbol
        return :Kt
    end

    private
    def move_diffs
        [[1, 2], [1, -2], [2, 1], [2,-1], [-1, 2], [-1, -2], [-2, 1], [-2, -1]]
    end

end