class LRUCache
    attr_reader :@array
    attr_accessor :max_size
    def initialize(size)
        @array = []
        @max_size = size

    end

    def count
        array.length
      # returns number of elements currently in cache
    end

    def add(el)
        if !@array.include?(el)
            @array << el
        else
          @array = [el] + @array[0...@array.find_index(el)] + @array[(@array.find_index(el)+1)..-1] 
        end
        
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
      @array
    end

    private
    # helper methods go here!

  end

  newclass = LRUCache.new(4)

  newclass.add(5)

  puts newclass