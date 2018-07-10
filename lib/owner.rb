class Owner
  # code goes here
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end
end
