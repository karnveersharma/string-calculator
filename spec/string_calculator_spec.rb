# Test Scripts for string calculator
require "string_calculator"

describe StringCalculator do
  describe ".add" do
    context "empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end
  end
end