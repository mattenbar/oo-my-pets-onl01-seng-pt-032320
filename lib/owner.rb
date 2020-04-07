require "pry"
class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize (name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all < self
  end

  def say_species
    return "I am a human."
  end

  def self.all
    @@all
  end


end
