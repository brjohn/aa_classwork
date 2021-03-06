class PolyTreeNode
    attr_reader :children, :parent
    attr_accessor :value
    def initialize(value = nil)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent_node)
        return if self.parent == parent_node
        #if node already has parent(p_old), then 
        #access p_old and remove self from p_old.children
        if self.parent != nil
            self.parent.children.delete(self)
        end
        @parent = parent_node
        self.parent.children << self unless self.parent == nil
    end

    def add_child(child)
        child.parent=self
    end

    def remove_child(child)
        raise_error if !self.children.include?(child)
        child.parent = nil
    end

    def dfs(target)

        return self if self.value == target
        children.each do |child|
            search = child.dfs(target)
            return search unless search == nil
        end
        nil
    end

    def bfs(target)
        queue = [self]
        until queue.empty?
            first = queue.shift
            return first if first.value == target
            queue += first.children
        end

        nil
    end

end

