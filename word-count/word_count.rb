class Phrase
  VERSION = 1
  def initialize(phrase)
    @phrase = extract_words(phrase)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end

  private

  def extract_words(phrase)
    phrase.downcase.scan(/\b[0-9A-Za-z']+\b/)
  end
end
