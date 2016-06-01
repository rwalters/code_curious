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
end
