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
    Cat.owner == self 
  end 
end









