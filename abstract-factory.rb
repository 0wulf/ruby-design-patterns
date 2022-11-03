class AbstractProductA
    #
end

class AbstractProductB
    #
end

class ConcreteProductA1 < AbstractProductA
    #
end

class ConcreteProductA2 < AbstractProductA
    # 
end

class ConcreteProductB1 < AbstractProductB
    #
end

class ConcreteProductB2 < AbstractProductB
    #
end


class AbstractFactory # Interface
    def createProductA
        raise NotImplementedError
    end
    def createProductB
        raise NotImplementedError
    end
end

class ConcreteFactory1 < AbstractFactory
    def createProductA
        ConcreteProductA1.new
    end
    def createProductB
        ConcreteProductB1.new
    end
end

class ConcreteFactory2 < AbstractFactory
    def createProductA
        ConcreteProductA2.new
    end
    def createProductB
        ConcreteProductB2.new
    end
end