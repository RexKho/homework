class Stack
    attr_accessor :the_Stack

    def initialize
        @the_Stack = []
        
    end
    
    def push(el)
        the_Stack.push(el)
    end

    def pop
        the_Stack.pop()
    end

    def peek 
        return the_Stack[-1]
    end
end


class Queue
    attr_accessor :the_Queue
    def initialize
        @the_Queue = []
    end

    def enqueue(el)
        @the_Queue.unshift(el)
    end

    def dequeue
        @the_Queue.pop
    end

    def peek
        @the_Queue[-1]
    end
end

class Map
    attr_accessor :the_Map

    def initialize
        @the_Map = Array.new() 
    end

    def set(key, value)
        if @the_Map.length > 0
            @the_Map.unshift([key, value])
            return true
        end
            @the_Map.each_with_index do |ele, idx|
                if ele[0] == key
                    @the_Map[idx] << value
                    return true
                end
            end
        
        @the_Map.unshift([key, value])
        return true
       
    end


    def get(key)
        @the_Map.each_with_index do |ele, idx|
            if ele[0] == key
                return @the_Map[idx]
            end
        end
        return nil
    end

    def delete(key)
        @the_Map.each_with_index do |ele, idx|
            if ele[0] == key
                @the_Map = @the_Map[0...idx] + @the_Map[(idx+1)..-1]
            end
        end
        @the_Map
    end

    def show
        @the_Map
    end

end
