puts "Enter 1 for Celsius to Fahrenheit conversion"
puts "Enter 2 for Fahrenheit to Celsius conversion"
choice = gets.to_i

while choice < 1 || choice > 2
  puts "Error. You must type in a 1 or a 2."
  choice = gets.to_i
end
  
def conversion1(cel)
  cel * 1.8 + 32
end

def conversion2(fah)
  (fah - 32) / 1.8
end

def get_temp(tem)
  puts "Enter temperature in #{tem}:"
  temperature = gets.to_f
end

if choice == 1
  cels = get_temp("°C")
  puts "#{cels} °C equals #{conversion1(cels).round(2)} °F."
else
  fahs = get_temp("°F")
  puts "#{fahs} °F equals #{conversion2(fahs).round(2)} °C."
end
