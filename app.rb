require_relative "temperature"


foo = Temperature.new
foo.clitemp(ARGV[0].to_i,ARGV[1].to_i,ARGV[2])
