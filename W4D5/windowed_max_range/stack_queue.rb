require_relative 'my_stack'


class StackQueue
    
    def initialize
        @in_stack = MyStack.new
        @out_stack = MyStack.new
    end

    def size
        @out_stack.size + @in_stack.size
    end

    def empty?
        @out_stack.empty? && @in_stack.empty?
    end

    def enqueue(ele)
        @in_stack.push(ele)
    end

    def dequeue
        queueify if @out_stack.empty?
        @out_stack.pop
    end

    private
    def queueify
        @out_stack.push(@in_stack.pop) until @in_stack.empty?
    end


end