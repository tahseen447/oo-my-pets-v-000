class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species, pets={:fishes => [], :dogs => [], :cats => []} )
    @species = species
    @pets = pets
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
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood= "happy"}
  end

  def sell_pets
    @pets.each {|key, value| value.each {|animal| animal.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    fishes = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
end
