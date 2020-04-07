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

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all{|dog| @mood = "happy"}
  end


end
