class Gigasecond
  VERSION = 1
  BILLION_SECONDS = 10**9

  def self.from(start_time)
    start_time + BILLION_SECONDS
  end
end
