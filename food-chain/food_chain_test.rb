#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'

require_relative 'food_chain'

class NoCheating < IOError
  def message
    "The use of File.open and IO.read is restriced.\n"                \
    'This exercise intends to help you improve your ability to work ' \
    'with data generated from your code. Your program must not read ' \
    'the song.txt file.'
  end
end

class FoodChainTest < Minitest::Test
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  # There's no need to submit the tests you write, unless you
  # specifically want feedback on them.

  def test_the_whole_song
    # skip
    song_file = File.expand_path('../song.txt', __FILE__)
    expected  = IO.read(song_file)
    assert_equal expected, FoodChain.song
  end

  # Tests that an error is effectively raised when IO.read or
  # File.open are used within FoodChain.
  def test_read_guard
    ["IO.read 'song.txt'", "File.open 'song.txt'"].each do |trigger|
      assert_raises(NoCheating) { FoodChain.send :class_eval, trigger }
    end
  end

  # This is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  def test_version
    # skip
    assert_equal 2, FoodChain::VERSION
  end
end

module RestrictedClasses
  class File
    def self.open(*)
      fail NoCheating
    end

    def self.read(*)
      fail NoCheating
    end
  end

  class IO
    def self.read(*)
      fail NoCheating
    end
  end
end

FoodChain.prepend RestrictedClasses
