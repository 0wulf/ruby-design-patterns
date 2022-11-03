# This is the most general case

class ProductInterface
    def doStuff
        raise NotImplementedError
    end
end

class ProductA < ProductInterface
    def doStuff
        # Define product A specific stuff
    end
end

class ProductB < ProductInterface
    def doStuff
        # Define product B specific stuff
    end
end

class AbstractCreator
    def someOperation()
        # this method doesnt need to be abstract
    end

    def createProduct # factory method, abstract}
        raise NotImplementedError
    end
end

class ConcreteCreatorA < AbstractCreator
    def createProduct
        ProductA.new
    end
end

class ConcreteCreatorB < AbstractCreator
    def createProduct
        ProductB.new
    end
end
