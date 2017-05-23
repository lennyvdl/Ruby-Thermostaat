class Convert
    def convert_temp(temperature,unit)
      if unit == "f"
      endtemp = temperature * 1.8 + 32
      #endrange = (range*1.8 + 32)
        puts "The temperature is #{endtemp}°F"
      elsif unit == "k"
        endtemp = temperature + 273.15
        #endrange = (range+273.15)
        puts "The temperature is #{endtemp}°K"
      elsif unit =="c"
      endtemp = temperature
      #endrange = range
        puts "The temperature is #{endtemp}°C"
      end
      return endtemp
      #return endrange
    end

    def convert_range(unit)

      if unit == "f"
      $endrange = $range * 1.8 + 32
      $idealetemp = 20 *1.8+32
        puts "The range is #{$endrange}°F"
        puts "The ideal temperature is #{$idealetemp}°F"
      elsif unit == "k"
        $endrange = $range + 273.15
        $idealetemp = 20+273.15
        puts "The range is #{$endrange}°K"
        puts "The ideal temperature is #{$idealetemp}°K"
      elsif unit =="c"
      $endrange = $range
      $idealetemp = 20
        puts "The range is #{$endrange}°C"

      end
      return $endrange
    end

    def output(temperature)
      if temperature > ($idealetemp + $endrange)
        puts "red"
      elsif temperature < ($idealetemp - $endrange)
        puts "blue"
      else
        puts "green"
      end
  end
end
