class Phrase
  VERSION = 1
  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end
