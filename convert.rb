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
