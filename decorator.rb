class Component
    def operation
        raise NotImplementedError
    end
end

class ConcreteComponent < Component
    def operation
        "ConcreteComponent"
    end
end

class Decorator < Component
    attr_accessor :component

    def initialize(component)
        @component = component
    end

    def operation
        @component.operation
    end
end

class ConcreteDecoratorA < Decorator
    def operation
        "ConcreteDecoratorA(#{@component.operation})"
    end
end

class ConcreteDecoratorB < Decorator
    def operation
        "ConcreteDecoratorB(#{@component.operation})"
    end
end