class Calculator
  def add(first, second)
    first + second
  end

  def subtract(first, second)
    first - second
  end

  def multiply(first, second, *args)
    answer = first*second
    args.each{|a| answer = answer * a }
    answer
  end

  def divide(first, second)
    first/second.to_f
  end

  def square(side)
    multiply(side,side)
  end

  def sqrt(number)
    Math.sqrt(number)
  end
end
