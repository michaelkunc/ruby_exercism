class Fixnum

  VERSION = 2
  ROMAN_NUMERALS = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I",
  }

  def to_roman
    number = self
    ROMAN_NUMERALS.reduce('') do |result, (key, value)|
      quotient, number = number.divmod(key)
      result << value * quotient
    end
  end

end