class Context
    attr_writer :strategy

    def initialize(strategy)
        @strategy = strategy
    end

    def strategy=(strategy)
        @strategy = strategy
    end

    def do_some_business_logic
        puts "Context: Sorting data using the strategy (not sure how it'll do it)"
        result = @strategy.do_algorithm(['a', 'b', 'c', 'd', 'e'])
        print result.join(',')
    end
end

class Strategy
    def do_algorithm(_data)
        raise NotImplementedError
    end
end

class ConcreteStrategyA < Strategy
    def do_algorithm(data)
        data.sort
    end
end

class ConcreteStrategyB < Strategy
    def do_algorithm(data)
        data.sort.reverse
    end
end