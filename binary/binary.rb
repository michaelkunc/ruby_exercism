class Binary
  VERSION = 1
  def initialize(binary_number)
    validate_input(binary_number)
    @binary_number = binary_number.chars.map(&:to_i)
  end

  def to_decimal
    @binary_number.reduce(0) { |sum, e| sum * 2 + e }
  end

  def validate_input(input)
    unless input.chars.all? { |x| x =~ /[01]/ }
      fail ArgumentError, 'Please enter a binary number in string format'
    end
  end
end
