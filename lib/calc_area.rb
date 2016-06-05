require 'calculator'

class CalcArea
  PI = 3.14

  def rectangle(height, width)
    calculator.multiply(height, width)
  end

  def square(side)
    calculator.square(side)
  end

  def circle(radius)
    calculator.multiply(square(radius), PI)
  end

  def triangle(base,height)
    calculator.divide(rectangle(base, height), 2)
  end

  def hexagon(side)
    to_be_multiplied = [3]
    to_be_multiplied << calculator.sqrt(3)
    to_be_multiplied << calculator.square(side)

    answer = calculator.multiply( *to_be_multiplied )
    answer = calculator.divide(answer, 2)
    answer.round(2)
  end

  private

  def calculator
    @calculator ||= Calculator.new
  end
end
