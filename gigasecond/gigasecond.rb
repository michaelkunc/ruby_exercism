class GigasecondTest < Minitest::Test
end

class Gigasecond < GigasecondTest
  VERSION = 1

  def self.from(time)
    return time + (10**9)
  end

end
