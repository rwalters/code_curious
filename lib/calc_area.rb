require 'calculator'

class CalcArea
  def rectangle(height, width)
    calculator.multiply(height, width)
  end

  def square(side)
    rectangle(side, side)
  end

  private

  def calculator
    @calculator ||= Calculator.new
  end
end
