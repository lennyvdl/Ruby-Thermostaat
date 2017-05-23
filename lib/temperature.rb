require_relative "convert"
class Temperature
=begin
  def clitemp(temperature,range,unit)
    $temperature= temperature
    $range = range
    $unit = unit
    foo = Convert.new
    foo.convert_temp

        if $temperature > (20 +$range)
          puts "red"
        elsif $temperature < (20 -$range)
          puts "blue"
        else
          puts "green"
        end
    end
=end

def temperatuur(temperature,range,unit)

#test url
=begin
    def open
      temp_test = (URI.parse("https://labict.be/software-engineering/temperature/api/temperature/fake").read).to_f
      puts temp_test

    end
=end
end
