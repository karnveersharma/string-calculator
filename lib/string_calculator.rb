# String calculator

class StringCalculator
  def add(string_numbers)
    numbers = split_numbers(string_numbers)
    numbers.empty? ? 0 : get_total(numbers)
  end

  private
    def split_numbers(string_numbers)
      string_numbers.split(/[\n,]/)
    end

    def get_total(numbers)
      numbers.sum(&:to_i)
    end
end