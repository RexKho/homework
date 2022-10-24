class GraphNode
    attr_writer :neighbors
    def initialize(value)
        @value = value
        @neighbors = nil
    end

    
end

def bfs(starting_node, target_value)
    visited = []
    @neighbors.each do |nod|
        if !visited.include?(nod)
            if nod == target_value
                return nod
            end
            visited << nod
            bfs(nod, target_value)
        end
    end
    return nil 
end


puts a = GraphNode.new('a')
puts b = GraphNode.new('b')
puts c = GraphNode.new('c')
puts d = GraphNode.new('d')
puts e = GraphNode.new('e')
puts f = GraphNode.new('f')
puts a.neighbors = [b, c, e]
puts c.neighbors = [b, d]
puts e.neighbors = [a]
puts f.neighbors = [e]
puts bfs(a, "b")