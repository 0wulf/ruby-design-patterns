class Target
    def request
        # ...
    end
end

class Adaptee
    def specific_request
        # ...
    end
end

class Adapter < Target
    def initialize(adaptee)
        @adaptee = adaptee
    end

    def request
        @adaptee.specific_request 
        # here you translate the request

    end
end

