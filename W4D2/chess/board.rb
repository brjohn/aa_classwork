require_relative "piece"
require "byebug"
class Board
    attr_reader :rows, :null_piece

    def initialize
        @rows = Array.new(8) 
            (0...8).each.with_index do |i|
                if i < 2
                    @rows[i] = Array.new(8, nil)
                elsif i > 5
                    @rows[i] = Array.new(8, nil)
                else
                    @rows[i] = Array.new(8, nil)
                
                end
            end

        @null_piece = null_piece
    end

    def [](pos)
        @rows[pos[0]][pos[1]]
    end

    def []=(pos, val)
        @rows[pos[0]][pos[1]] = val
    end

    def move_piece(start_pos, end_pos)
        raise "Oop! No piece here" if self[start_pos].nil?
        if valid_pos?(pos)
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        else
            raise "Not a valid position"
        end
    end

    def valid_pos?(pos)
        (pos[0] >= 0 && pos[0] < 8) && (pos[1] >= 0 && pos[1] < 8)
    end

    # def add_piece(piece, pos)
    # end

    # def checkmate?(color)
    # end

    # def in_check?(color)
    # end

    # def find_king(color)
    # end

    # def pieces
    # end

    # def dup
    # end

    # def move_piece!(color, start_pos, end_pos)
    # end


end