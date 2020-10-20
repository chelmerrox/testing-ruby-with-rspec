class Calculator
  def add(a,b,c = 0)
    values = []
    values << a
    values << b
    values << c

    begin
     if a.is_a?(Integer) && b.is_a?(Integer) && b.is_a?(Integer)
       return result = values.inject { |sum, num| sum + num }
     end
    rescue TypeError
      puts 'Error. Cannot add different data types.'
      return nil
    end
  end

  def subtract(a,b,c = 0)
    values = []
    values << a
    values << b
    values << c

    begin
      if a.is_a?(Integer) && b.is_a?(Integer) && b.is_a?(Integer)
        return result = values.inject { |difference, num| difference - num }
      end
    rescue TypeError
      puts 'Error. Cannot subtract different data types.'
      return nil
    end
  end

  def multiply(a,b,c = 1)
    values = []
    values << a
    values << b
    values << c

    begin
      if a.is_a?(Integer) && b.is_a?(Integer) && b.is_a?(Integer)
        return result = values.inject(1) { |product, num| product * num }
      end
    rescue TypeError
      puts 'Error. Cannot multiply different data types.'
      return nil
    end
  end

  def divide(a,b,c = 1)
    values = []
    values << a
    values << b
    values << c

    begin
      if a.is_a?(Integer) && b.is_a?(Integer) && b.is_a?(Integer)
        return result = values.inject { |quotient, num| quotient/num } 
      end
    rescue ZeroDivisionError
      puts 'Error. Cannot divide by zero.'
      return nil
    rescue TypeError
      puts 'Error. Cannot divide different data types.'
      return nil
    end
  end
end