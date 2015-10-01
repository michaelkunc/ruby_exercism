class Year
  def self.leap?(year)
    divisible?(year, 4) && (!divisible?(year, 100) || divisible?(year, 400))
  end

  def self.divisible?(year, number)
    year % number == 0
  end
end
