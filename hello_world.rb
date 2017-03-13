class Helloworld

attr_accessor :name

  def initialize(name = "world")
    @name = name
  end

  def say_hello
    puts "Hello #{@name}"
  end
end
