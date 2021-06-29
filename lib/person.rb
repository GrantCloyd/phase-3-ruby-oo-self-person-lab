# your code goes here

class Person 

attr_reader :name
attr_accessor :bank_account, :hygiene, :happiness



def initialize(name)
 @name = name
 @bank_account = 25
 @happiness = 8
 @hygiene = 8
end

def happiness=(num)
    @happiness = [num,0,10].sort[1]
end

def hygiene=(num)
    @hygiene = [num,0,10].sort[1]
end

def happy?
@happiness > 7 ? true : false
end

def clean? 
@hygiene > 7 ? true : false
end

def get_paid(salary)
  @bank_account = @bank_account + salary
  "all about the benjamins"
end

def take_bath
  self.hygiene = @hygiene +4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
end

def call_friend(person_class)
    self.happiness = @happiness + 3
    person_class.send(:happiness= , person_class.happiness + 3 )
    "Hi #{person_class.name}! It's #{@name}. How are you?"
end

def start_conversation(person_class, topic)
    if topic == 'politics'
        self.happiness -= 2
        person_class.send(:happiness= , person_class.happiness - 2)
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        person_class.send(:happiness=, person_class.happiness + 1 )
        "blah blah sun blah rain"
    else 
        'blah blah blah blah blah'
    end
end

end