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
foo.clitemp(ARGV[0].to_i,ARGV[1].to_i)
=begin
foo.ask_unit
foo.get_unit


foo.ask_temp
foo.get_temp

foo.range

foo.convert
=end
