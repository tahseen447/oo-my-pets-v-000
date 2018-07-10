class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name

  @@all = []

  def initialize(species, pets={"cat" : "", "dog": "" , "fish": ""})
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    @species
  end

end
