require_relative "temperature"
require 'optparse'

foo = Temperature.new

foo.clitemp(ARGV[0].to_i,ARGV[1].to_i,ARGV[2])


options = {:url => nil, :temp => nil}

parser = OptionParser.new do|opts|
	opts.banner = "Usage: years.rb [options]"
	opts.on('-u', '--url url', 'Url') do |Url|
		options[:url] = name;
	end

	opts.on('-a', '--age age', 'Age') do |age|
		options[:age] = age;
	end

	opts.on('-h', '--help', 'Displays Help') do
		puts opts
		exit
	end
end
