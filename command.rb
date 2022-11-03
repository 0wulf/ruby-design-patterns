class Command
    def execute
        raise NotImplementedError
    end
end

class SimpleCommand < Command
    def initialize(payload)
        @payload = payload
    end

    def execute
        puts "SimpleCommand: See, I can do simple things like printing (#{@payload})"
    end
end

class ComplexCommand < Command
    def initialize(receiver, a, b)
        @receiver = receiver
        @a = a
        @b = b
    end

    def execute
        puts "ComplexCommand: Complex stuff should be done by a receiver object."
        @receiver.do_something(@a)
        @receiver.do_something_else(@b)
    end
end

class Receiver
    def do_something(a)
        puts "\tReceiver: Working on (#{a}.)"
    end

    def do_something_else(b)
        puts "\tReceiver: Also working on (#{b}.)"
    end
end

class Invoker
    def on_start=(command)
        @on_start = command
    end

    def on_finish=(command)
        @on_finish = command
    end

    def do_something_important
        puts "Invoker: Does anybody want something done before I begin?"
        @on_start.execute if @on_start.is_a?(Command)

        puts "Invoker: ...doing something really important..."

        puts "Invoker: Does anybody want something done after I finish?"
        @on_finish.execute if @on_finish.is_a?(Command)
    end
end

