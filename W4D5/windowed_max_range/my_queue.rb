
class MyQueue
    def initialize
        @store = []
    end

    def peek
        @store[0]
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?    
    end

    def enqueue(ele)
        @store.push(ele)
    end

    def dequeue
        @store.shift
    end

end