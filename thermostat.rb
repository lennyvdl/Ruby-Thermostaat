require_relative "./lib/convert"
require 'optparse'

foo = Convert.new
#cli
#foo = Temperature.new
#foo.clitemp(ARGV[0].to_i,ARGV[1].to_i,ARGV[2])


options = {:celcius => nil, :fahrenheit => nil, :kelvin => nil, :range => nil }

parser = OptionParser.new do |opts|

 opts.banner = "Usage: .rb [options]"

	opts.on('-r', '--range range',Float, 'Range') do |range|
		options[:range] = range;
		$range = range
	end

	opts.on('-c', '--celcius C',Float, 'Celcius') do |celcius|
		options[:temperature] = foo.convert_temp(celcius,"c");
		range = foo.convert_range("c");
	end

	opts.on('-k', '--kelvin K', Float , 'Kevin') do |kelvin|
		options[:temperature] = foo.convert_temp(kelvin,"k");
		range = foo.convert_range("k");
	end

	opts.on('-u', '--fahrenheit F', Float, 'Fahrenheit') do |fahrenheit|
		options[:temperature] = foo.convert_temp(fahrenheit,"f");
		range = foo.convert_range("f");
	end
end
parser.parse!

if options[:temperature]
	while true do
		ledoutput = foo.output(options[:temperature])
		break
	end
end
