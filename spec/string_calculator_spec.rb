# Test Scripts for string calculator
require "string_calculator"

describe StringCalculator do

  subject(:string_calculator) {described_class.new}
  
  describe ".add" do
    context "empty string" do
      it "returns 0" do
        expect(string_calculator.add("")).to eql(0)
      end
    end
  end
end