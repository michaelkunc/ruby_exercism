class FoodChain
  VERSION = 2
  def self.song
    (1..8).each_with_object('') { |n, lyrics| lyrics << verse(n) + "\n" }
  end

  def self.verse(number)
    Verse.new(number).create_verse
  end
end

class Verse
  attr_reader :verse, :animal
  def initialize(number)
    @verse = number
    @animal = animals[number][0]
  end

  def animals
    {
      1 => ['fly', "I don't know why she swallowed the fly. Perhaps she'll die.\n"],
      2 => ['spider', "It wriggled and jiggled and tickled inside her.\n"],
      3 => ['bird', "How absurd to swallow a bird!\n"],
      4 => ['cat', "Imagine that, to swallow a cat!\n"],
      5 => ['dog', "What a hog, to swallow a dog!\n"],
      6 => ['goat', "Just opened her throat and swallowed a goat!\n"],
      7 => ['cow', "I don't know how she swallowed a cow!\n"],
      8 => ['horse', "She's dead, of course!"]
    }
  end

  def create_verse
    verse = beginning(animal) + animals[@verse][1].to_s + middle
    verse << ending if ending
    verse
  end

  def beginning(animal)
    "I know an old lady who swallowed a #{animal}.\n"
  end

  def middle
    middle = ''
    if verse != 8
      middle << chase(animals[verse][0], animals[verse - 1][0]) if verse > 3
      middle << chase(animals[verse - 1][0], animals[verse - 2][0]) if verse > 4
      middle << chase(animals[verse - 2][0], animals[verse - 3][0]) if verse > 5
      middle << chase(animals[verse - 3][0], animals[verse - 4][0]) if verse > 6
      middle << 'She swallowed the bird to catch the spider ' + animals[2][1].sub!('It', 'that') if verse > 2
    end
    middle
  end

  def chase(first_animal, second_animal)
    "She swallowed the #{first_animal} to catch the #{second_animal}.\n"
  end

  def ending
    return "She swallowed the spider to catch the fly.\n" + animals[1][1] if verse > 1 && verse != 8
  end
end
