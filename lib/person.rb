require 'pry'
class Person
    attr_reader :name, :bank_account, :hygiene, :happiness
    attr_writer :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
        @happiness
    end
    def hygiene
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end
    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end
    def take_bath
        self.hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness= @happiness + 2
        self.hygiene= @hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(instance)
        self.happiness += 3
        instance.happiness += 3
       "Hi #{instance.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(instance, topic)
        if topic == "politics"
            instance.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            instance.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            return 'blah blah blah blah blah'
        end
    end
end