# String calculator

class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.empty?

    string_to_integer(string_numbers)
  end

  private
    def string_to_integer(string_num)
      string_num.to_i
    end
end