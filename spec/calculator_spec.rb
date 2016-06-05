require 'calculator'

describe Calculator do
  let(:calculator) { described_class.new }

  context "#add" do
    it "shows 2+2 = 4" do
      expect(calculator.add(2,2)).to eq 4
    end

    it "shows 4+3 != 5" do
      expect(calculator.add(4,3)).not_to eq 5
    end
  end

  context "#subtract" do
    it "shows 2-2 = 0" do
      expect(calculator.subtract(2,2)).to eq 0
    end

    it "shows 4-3 != 5" do
      expect(calculator.subtract(4,3)).not_to eq 5
    end
  end

  context "#multiply" do
    it "shows 2*2 = 4" do
      expect(calculator.multiply(2,2)).to eq 4
    end

    it "shows 4*3 != 5" do
      expect(calculator.multiply(4,3)).not_to eq 5
    end

    it "shows 4*3 = 12" do
      expect(calculator.multiply(4,3)).to eq 12
    end

    it "shows 3*4*5 = 60" do
      expect(calculator.multiply(3,4,5)).to eq 60
    end

    it "shows 2*3*4*5 = 120" do
      expect(calculator.multiply(2,3,4,5)).to eq 120
    end
  end

  context "#divide" do
    it "shows 2/2 = 1" do
      expect(calculator.divide(2,2)).to eq 1
    end

    it "shows 3/2 != 5" do
      expect(calculator.divide(3,2)).not_to eq 5
    end

    it "shows 3/2 = 1.5" do
      expect(calculator.divide(3,2)).to eq 1.5
    end
  end

  context "#square" do
    it "shows square(9) is 81" do
      expect(calculator.square(9)).to eq 81
    end

    it "shows square(8) is 64" do
      expect(calculator.square(8)).to eq 64
    end
  end

  context "#sqrt" do
    it "shows sqrt(9) is 3" do
      expect(calculator.sqrt(9)).to eq 3
    end

    it "shows sqrt(81) is 9" do
      expect(calculator.sqrt(81)).to eq 9
    end
  end
end
