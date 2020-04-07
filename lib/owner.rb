require "pry"
class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []
  @@count = 0

  def initialize (name)
    @name = name
    @species = "human"
    save
    @@count += 1
  end

  def save
    @@all << self
  end

  def say_species
    return "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end


end
