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
      if delimiters? numbers
        delimiter = delimiter(numbers)
        numbers = remove_delimiter(numbers, delimiter)
      end

      raise 'negatives not allowed' if negatives? numbers

      numbers.sum(&:to_i)
    end

    def delimiters? numbers
      numbers.any?{|number| number.include?("//")}
    end

    def delimiter numbers
      numbers.first.delete('//[]')
    end

    def remove_delimiter numbers, delimiter
      numbers.last.delete(delimiter).split('')
    end

    def negatives? numbers
      numbers.any? { |number| number.include?('-') }
    end
end