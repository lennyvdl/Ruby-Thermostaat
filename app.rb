require_relative "temperature"

# require_relative "hello_world"

=begin
foo = Helloworld.new "Lenny"
foo.say_hello

foo.name = "Joske"
foo.say_hello

puts foo.name
=end

foo = Temperature.new
foo.ask_temp
foo.get_temp
foo.range
foo.colour_led
