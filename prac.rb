class Cat

  attr_accessor :name, :stomach, :age

  def initialize(name, age)
    @name = name
    @stomach = []
    @age = age
  end

  def eat_mice(mice)
    @stomach << mice
    mice.live = false
  end

  def print_stomach
    @stomach.each do |el|
      puts el.name
      puts el.live
      puts el.age
    end
  end

  def is_poisonous?(mice)
    if mice.poisonous == true
      puts "I dont eat poison"
    else
      puts "not"
    end
  end

end

class Mice

  attr_accessor :age, :live, :poisonous, :name

  def initialize(name)
    @name = name
    @age = rand(8)
    @poisonous = rand(2) == 1 ? true : false
    @live = true
  end

end

feline = Cat.new("Mr. Sniffles", 12)
puts mice1 = Mice.new("e")
puts mice2 = Mice.new("d")
puts mice3 = Mice.new("f")
puts mice4 = Mice.new("g")
puts mice4.live
puts mice5 = Mice.new("h")
puts mice6 = Mice.new("j")
puts mice7 = Mice.new("k")
feline.eat_mice(mice4)
puts mice4.live
puts "_____"
puts al = Mice.new("Al")
feline.eat_mice(al)
feline.print_stomach
feline.is_poisonous?(mice1)
