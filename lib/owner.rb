class Owner
  attr_reader :name, :species, :cat 
  
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
    cat.all 
  end 
  
  
  
  
end