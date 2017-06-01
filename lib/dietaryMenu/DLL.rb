# LISTA DOBLEMENTE ENLAZADA

# (tail) O (:next)-> O -> O ->(:prev) O (head)
Node = Struct.new(:value, :prev, :next) do
    def to_s
        value.to_s
    end
end
class DLL
    include Enumerable

    attr_reader :lenght, :head, :tail
    def initialize(*values)
        @length = 0
        @head = nil
        @tail = nil
        unless values.empty?
            insert(*values)
        end
    end

    def insert(*values)
        if values.empty?
            raise "No hay valores a insertar"
        end
        value = values[0]

        if @head.nil?
            @head = @tail = Node.new(value, nil, nil)
            @length+=1
        else
            insert_head(value)
        end


        (1...values.length).each do |i|
            insert_head(values[i])
        end

    end

    def to_s( reverse = false )
        self.each(reverse) do |pointer|
            puts pointer
        end
        "length: #{@length}"
    end
    def reverse
        self.to_s(true)
    end
    def shift
        value = nil
        if(@head!= nil)
            pointer = @head
            value = pointer.value
            @head = pointer.prev
            @head.next = nil
            pointer.prev = nil
        end
        return value
    end

    def each(reverse=false, &block)
        if(reverse)
            pointer = @tail
            prox = :next
        else
            pointer = @head
            prox = :prev
        end

        while (pointer!=nil)
            yield pointer
            pointer = pointer[prox]
        end
    end

    private
    def insert_head(value)
        node = Node.new(value, @head, nil)
        @head.next = node
        @head = node
        @length +=1
    end


end
