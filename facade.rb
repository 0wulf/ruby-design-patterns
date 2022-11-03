class Facade
    def initialize(subsystem1, subsystem2)
        @subsystem1 = subsystem1
        @subsystem2 = subsystem2
    end
    
    def operation
        results = []
        results.append("Facade initializes subsystems:")
        results.append(@subsystem1.operation1)
        results.append(@subsystem2.operation1)
        results.append("Facade orders subsystems to perform the action:")
        results.append(@subsystem1.operation_n)
        results.append(@subsystem2.operation_z)
        return results.join("\n")
    end
end

class Subsystem1
    def operation1
        "Subsystem1: Ready!"
    end
    def operation_n
        "Subsystem1: Go!"
    end
end

class Subsystem2
    def operation1
        "Subsystem2: Get ready!"
    end
    def operation_z
        "Subsystem2: Fire!"
    end
end

