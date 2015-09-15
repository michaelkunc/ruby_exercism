class Fixnum

  VERSION = 1
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
    result_string = ''
    number = self
    if number == 0
      result_string
    else
      ROMAN_NUMERALS.each do |key, value|
        (number / key).times do
          result_string << ROMAN_NUMERALS[key]
          number = number - key
        end
      end
      result_string
    end


  end

end