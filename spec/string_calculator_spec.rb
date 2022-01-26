# Test Scripts for string calculator
require "string_calculator"

describe StringCalculator do

  subject(:string_calculator) {described_class.new}

  describe ".add" do
    context "empty string" do
      it "returns 0" do
        expect(string_calculator.add('')).to eql(0)
      end
    end

    context "with 1 number" do
      it "returns 5" do
        expect(string_calculator.add('5')).to eql(5)
      end

      it "returns 8" do
        expect(string_calculator.add('5')).to eql(5)
      end
    end

    context "with 2 number" do
      it "return 3" do
        expect(string_calculator.add('1,2')).to eql(3)
      end

      it "return 9" do
        expect(string_calculator.add('4,5')).to eql(9)
      end
    end

    context "with multiple numbers" do
      it "return 24" do
        expect(string_calculator.add('4,6,7,7')).to eql(24)
      end

      it "return 36" do
        expect(string_calculator.add('3,6,9,9,5,4')).to eql(36)
      end
    end
  end
end