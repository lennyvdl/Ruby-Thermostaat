class Temperature
=begin
  def ask_unit
    puts "What unit are you using????? k = kelvin, c = celsius, f = Fahrenheit aka pleb unit"
  end

  def ask_temp
    puts "Whats the temperature? "
  end


  def get_temp
    temperature = ARGV[0].to_i
  end

  def range
    range = ARGV[1].to_i
  end

  def get_unit
    unit = ARGV[2].gets.downcase.delete!("\n")
  end
=end

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

  def clitemp(temperature,range)
    @temperature= temperature
    @range = range
    #@unit = unit

        if @temperature > (20 +@range)
          puts "red"
        elsif @temperature < (20 -@range)
          puts "blue"
        else
          puts "green"
        end
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