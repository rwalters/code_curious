require 'calculator'

class CalcArea
  PI = 3.14

  def rectangle(height, width)
    calculator.multiply(height, width)
  end

  def square(side)
    rectangle(side, side)
  end

  def circle(radius)
    calculator.multiply(square(radius), PI)
  end

  def triangle(base,height)
    calculator.divide(rectangle(base, height), 2)
  end

  def hexagon(side)
    answer = 3 * Math.sqrt(3)
    answer = answer/2
    answer = answer * square(side)
    answer.round(2)
  end

  private

  def calculator
    @calculator ||= Calculator.new
  end
end
