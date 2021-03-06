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
        expect(string_calculator.add('8')).to eql(8)
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

    context "with new lines charaters" do
      it "return 6" do
        expect(string_calculator.add("1\n2,3")).to eql(6)
      end

      it "return 25" do
        expect(string_calculator.add("1\n2,3\n5\n8,6")).to eql(25)
      end
    end

    context "with delimeter" do
      it "returns 3" do
        expect(string_calculator.add("//;\n1;2")).to eql(3)
      end

      it "return 10" do
        expect(string_calculator.add("//[***]\n1***3***6")).to eq(10)
      end
    end

    context "with negative numbers" do
      it "throws exception `negatives not allowed` when negative number passed" do
        expect{string_calculator.add("-5")}.to raise_error(RuntimeError, "negatives not allowed -5")
        expect{string_calculator.add("-1,-2")}.to raise_error(RuntimeError, "negatives not allowed -1,-2")
      end
    end
  end
end