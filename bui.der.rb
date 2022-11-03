class Product1
    #
end

class Product2
    #
end

class Builder # interface
    def reset
        raise NotImplementedError
    end
    def buildPartA
        raise NotImplementedError
    end
    def buildPartX
        raise NotImplementedError
    end
    def getProduct
        raise NotImplementedError
    end
end

class ConcreteBuilder1 < Builder
    def initialize
        reset
    end
    def reset
        @product = Product1.new
    end
    def buildPartA
        #
    end
    def buildPartX
        #
    end
    def getProduct
        product = @product
        reset
        product
    end
end

class ConcreteBuilder2 < Builder
    def initialize
        reset
    end
    def reset
        @product = Product2.new
    end
    def buildPartA
        #
    end
    def buildPartX
        #
    end
    def getProduct
        product = @product
        reset
        product
    end
end

class Director
    atrr_accessor :builder, :product

    def initialize(builder)
        @builder = builder
    end
    def setBuilder(builder)
        @builder = builder
    end
    def makeProduct
        @builder.buildPartA
        @builder.buildPartX
        @product = @builder.getProduct
    end
end

# Client
builder = ConcreteBuilder1.new
director = Director.new(builder)
director.makeProduct
product = director.product