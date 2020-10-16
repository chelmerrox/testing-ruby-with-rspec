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

  def multiply(a,b,c=nil)
    values = []
    values << a
    values << b
    #values << c
    return result = values.inject { |product, num| product * num }
  end

  def divide(a,b,c = 0)
    values = []
    values << a
    if !b.zero? || !c.zero?
      values << b
      values << c
    else
      #return 'Error! Can not divide by zero!'
      raise ZeroDivisionError
    end

    return result = values.inject { |quotient, num| quotient/num } 
  end

end