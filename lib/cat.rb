require "pry"
class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  @@count = 0

  def initialize (name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    @@count += 1
  end

end
