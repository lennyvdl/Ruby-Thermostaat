class Temperature
  def convert
    if @unit == "f"
    @endtemp = (@temperature* 1.8 + 32)
    @endrange = (@range*1.8 + 32)
      puts "Fahrenheit selected and temperature is #{@endtemp}."
    elsif @unit == "k"
      @endtemp = (@temperature+273.15)
      @endrange = (@range+273.15)
      puts "Kelvin selected"
    elsif @unit =="c"
      puts "Celcius selected"
    end
  end

  def clitemp(temperature,range,unit)
    @temperature= temperature
    @range = range
    @unit = unit
    convert

        if @temperature > (20 +@range)
          puts "red"
        elsif @temperature < (20 -@range)
          puts "blue"
        else
          puts "green"
        end
    end

    def open
      temp_test = (URI.parse("https://labict.be/software-engineering/temperature/api/temperature/fake").read).to_f
      puts temp_test

    end





=begin
  def colour_led(temperature,range)
    @temperature= temperature
    @range = range
    #@unit = unit

        if @endtemp > (20 +@endrange)
          puts "red"
        elsif @endtemp < (20 -@endrange)
          puts "blue"
        else
          puts "green"
        end
    end
=end
end
