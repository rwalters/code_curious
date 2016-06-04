require 'calc_area'

describe CalcArea do
  let(:calc) { described_class.new }

  context "#rectangle" do
    it do
      expect(calc.rectangle(2,2)).to eq 4
    end

    it do
      expect(calc.rectangle(3,2)).to eq 6
    end

    it do
      expect(calc.rectangle(12,5)).to eq 60
    end
  end

  context "#square" do
    it do
      expect(calc.square(2)).to eq 4
    end

    it do
      expect(calc.square(3)).to eq 9
    end

    it do
      expect(calc.square(12)).to eq 144
    end
  end

  context "#circle" do
    it do
      expect(calc.circle(2)).to eq 12.56
    end

    it do
      expect(calc.circle(3)).to eq 28.26
    end

    it do
      expect(calc.circle(12)).to eq 452.16
    end
  end

  context "#triangle" do
    it do
      expect(calc.triangle(2, 4)).to eq 4
    end

    it do
      expect(calc.triangle(3, 8)).to eq 12
    end

    it do
      expect(calc.triangle(6, 14)).to eq 42
    end
  end

  context "#hexagon" do
    it do
      expect(calc.hexagon(3)).to eq 23.38
    end

    it do
      expect(calc.hexagon(8)).to eq 166.28
    end

    it do
      expect(calc.hexagon(14)).to eq 509.22
    end
  end
end
