class Owner
  attr_reader :name, :species, :cat, :dog
  
  @@all = [] 
  @@count = 0 
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @@count += 1 
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def self.all 
    @@all 
  end
  
  def self.count
    @@count 
  end 
  
  def self.reset_all
    self.all.clear
    @@count =  0 
  end 
  
  def cats 
    Cat.all.select { |cat| 
      cat.owner == self 
    }
  end 
  
  def dogs
    Dog.all.select { |dog|
      dog.owner == self 
    }
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs 
   Dog.all.select { |dog| 
      dog.mood = "happy"
    }
  end 
  
  def feed_cats
    Cat.all.select { |cat|
      cat.mood = "happy"
    }
  end 
  
  def sell_pets 
    Dog.all.select { |dog|
      dog.owner = nil 
      dog.mood = "nervous"
    }
    Cat.all.select { |cat| 
      cat.owner = nil 
      cat.mood = "nervous"
    }
  end 
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end
















