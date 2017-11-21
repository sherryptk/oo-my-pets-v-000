require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :buy_fish, :pets
  attr_reader :species, :say_species

  @@all =[]

  def initialize(name = nil)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    @pets.each do |k,v|
      v.each do |v|
        v.mood = "nervous"
      end
    end
    @pets.clear
  end


end
