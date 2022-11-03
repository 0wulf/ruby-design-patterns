class AbstractClass
    def template_method
        operation1
        operation2
    end

    def operation1
        raise NotImplementedError
    end

    def operation2
        raise NotImplementedError
    end
end

class ConcreteClass1 < AbstractClass
    def operation1
        puts "ConcreteClass1 says: Implemented Operation1"
    end

    def operation2
        puts "ConcreteClass1 says: Implemented Operation2"
    end
end

class ConcreteClass2 < AbstractClass
    def operation1
        puts "ConcreteClass2 says: Implemented Operation1"
    end

    def operation2
        puts "ConcreteClass2 says: Implemented Operation2"
    end
end