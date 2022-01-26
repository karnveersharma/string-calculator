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
  end
end