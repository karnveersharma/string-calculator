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
        delimeter = delimeter(numbers)
        puts "delimeter is #{delimeter}"
      end
      numbers.sum(&:to_i)
    end

    def delimiters? numbers
      numbers.any?{|number| number.include?("//")}
    end

    def delimeter numbers
      numbers.first.delete('//[]')
    end
end