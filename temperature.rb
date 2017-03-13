class Temperature
  attr_accessor :range
  attr_accessor :temp
  def ask_temp
    puts "Whats the temperature? "
  end

  def get_temp
    @temperature = gets.to_i
  end

  def range
    @range = 1
  end

  def colour_led
    if @temperature > (20 +@range)
      puts "red"
    elsif @temperature < (20 -@range)
      puts "blue"
    else
      puts "green"
    end
  end
end
