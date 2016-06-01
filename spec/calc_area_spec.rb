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
    xit do
      expect(calc.circle(2)).to eq 12.56
    end

    xit do
      expect(calc.circle(3)).to eq 28.26
    end

    xit do
      expect(calc.circle(12)).to eq 452.16
    end
  end
end
