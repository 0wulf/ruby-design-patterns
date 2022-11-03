class Subject
    def attach(observer)
        raise NotImplementedError
    end
    
    def deattach(observer)
        raise NotImplementedError
    end

    def notify
        raise NotImplementedError
    end
end

class ConcreteSubject < Subject
    attr_accessor :state

    def initialize
        @observers = []
    end

    def attach(observer)
        @observers << observer
    end

    def deattach(observer)
        @observers.delete(observer)
    end

    def notify
        @observers.each do |observer|
            observer.update(self)
        end
    end

    def some_business_logic
        puts "\nSubject: I'm doing something important."
        @state = rand(0..10)

        puts "Subject: My state has just changed to: #{@state}"
        notify
    end
end

class Observer
    def update(subject)
        raise NotImplementedError
    end
end

class ConcreteObserverA < Observer
    def update(subject)
        if subject.state < 3
            puts "ConcreteObserverA: Reacted to the event"
        end
    end
end

class ConcreteObserverB < Observer
    def update(subject)
        if subject.state == 0 || subject.state >= 2
            puts "ConcreteObserverB: Reacted to the event"
        end
    end
end