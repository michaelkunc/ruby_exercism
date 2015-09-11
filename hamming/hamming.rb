class HammingTest < Minitest::Test

end

class Hamming < HammingTest
  VERSION = 2

  def self.compute(first_string, second_string)
    raise ArgumentError if first_string.length != second_string.length
    distance = 0
    return distance if first_string.eql?(second_string)
    first_string.split('').each_with_index {|element, index| distance += 1 if element != second_string.split('')[index]}
    return distance
  end

end
