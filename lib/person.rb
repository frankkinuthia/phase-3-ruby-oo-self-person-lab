# your code goes here

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
    
    def happiness=(value)
      @happiness = value.clamp(0, 10)
    end
    
    def hygiene=(value)
      @hygiene = value.clamp(0, 10)
    end
    
    def clean?
      hygiene > 7
    end
    
    def happy?
      happiness > 7
    end
    
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
    
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness += 1
                friend.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
        end
    end
end
  

# person1 = Person.new("Alice")
# person2 = Person.new("Bob")

# puts person1.name #"Alice"
# puts person1.bank_account # 25
# person1.bank_account = 100
# puts person1.bank_account #100


# puts person1.happiness #8
# person1.happiness += 5
# puts person1.happiness #10
# person1.happiness += 3
# puts person1.happiness #10

# puts person1.hygiene #8
# person1.hygiene -= 10
# puts person1.hygiene #0
# person1.hygiene -= 3
# puts person1.hygiene #0

# puts person1.clean? #false
# person1.hygiene += 4
# puts person1.clean?  #true

# puts person1.happy? # false
# person1.happiness += 4
# puts person1.happy? # true

# puts person1.get_paid(500) # "all about the benjamins"
# puts person1.bank_account # 600

# puts person1.take_bath # "♪ Rub-a-dub just relaxing in the tub ♫"
# puts person1.hygiene # 10

# puts person1.work_out # "♪ another one bites the dust ♫"
# puts person1.happiness # 10
# puts person1.hygiene # 7

# puts person1.call_friend(person2) # "Hi Bob! It's Alice. How are you?"
# puts person1.happiness # 10
# puts person2.happiness # 11

# puts person1.start_conversation(person2, "politics") # "blah blah partisan blah lobbyist"
# puts person1.happiness # 8
# puts person2.happiness # 9

# puts person1.start_conversation(person2, "weather") # "blah blah sun blah


