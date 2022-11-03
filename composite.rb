class Component
    def parent
      @parent
    end

    def parent=(parent)
      @parent = parent
    end

    def add(component)
        raise NotImplementedError
    end

    def remove(component)
        raise NotImplementedError
    end

    def composite?
        false
    end

    def operation
        raise NotImplementedError
    end
end

class Leaf < Component
    def operation
        # ...
    end
end

class Composite < Component
    def initialize
        @children = []
    end

    def add(component)
        @children << component
        component.parent = self
    end

    def remove(component)
        @children.remove(component)
        component.parent = nil
    end

    def composite?
        true
    end

    def operation
        @children.each { |c| c.operation }
    end
end
