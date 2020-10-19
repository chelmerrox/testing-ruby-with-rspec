class Calculator
  def add(a,b,c = 0)
    values = []
    values << a
    values << b
    values << c
    return result = values.inject { |sum, num| sum + num }
  end

  def subtract(a,b,c = 0)
    values = []
    values << a
    values << b
    values << c
    return result = values.inject { |difference, num| difference - num }
  end

  def multiply(a,b,c = 1)
    values = []
    values << a
    values << b
    values << c
    return result = values.inject(1) { |product, num| product * num }
  end

  def divide(a,b,c = 1)
    values = []
    values << a
    values << b
    values << c

    begin 
      result = values.inject { |quotient, num| quotient/num } 
    rescue ZeroDivisionError=>e
      #return 'Error! Can not divide by zero!'
      puts "Error: #{e}"
    else
      return result
    end
     
  end

end