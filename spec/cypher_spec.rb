require 'cypher'

describe Cypher do
  let(:cypher) { described_class.new }

  let(:plain1)    { "hello" }
  let(:encrypt1)  { "gdkkn" }

  let(:plain2)    { 'my name' }
  let(:encrypt2)  { 'lx mzld' }

  let(:plain3)    { 'I am Rowan' }
  let(:encrypt3)  { 'h zl qnvzm' }

  let(:plain4)    { 'I have 9 apples!' }
  let(:encrypt4)  { 'h gzud 9 zookdr!' }

  context "#encrypt" do
    it "encrypts lower case text" do
      expect(cypher.encrypt(plain1)).to eq encrypt1
    end

    it "encrypts lower case text with a space" do
      expect(cypher.encrypt(plain2)).to eq encrypt2
    end

    it "encrypts mixed case to just lower case" do
      expect(cypher.encrypt(plain3)).to eq encrypt3
    end

    it "encrypt mixed case to lower case, leaving numbers and punctuation alone" do
      expect(cypher.encrypt(plain4)).to eq encrypt4
    end
  end

  context "#decrypt" do
    it "decrypt lower case text" do
      expect(cypher.decrypt(encrypt1)).to eq plain1
    end

    it "decrypt lower case text with a space" do
      expect(cypher.decrypt(encrypt2)).to eq plain2
    end

    it "decrypt upper case encrypted text to just lower case decryption" do
      expect(cypher.decrypt(encrypt3.upcase)).to eq plain3.downcase
    end

    it "decrypt mixed case to lower case, leaving numbers and punctuation alone" do
      expect(cypher.decrypt(encrypt4)).to eq plain4.downcase
    end
  end
end
