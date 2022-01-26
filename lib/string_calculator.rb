# String calculator

class StringCalculator
  def add(string_numbers)
    numbers = split_numbers(string_numbers)
    numbers.empty? ? 0 : numbers.sum(&:to_i)
  end

  private
    def split_numbers(string_numbers)
      string_numbers.split(/[\n,]/)
    end
end