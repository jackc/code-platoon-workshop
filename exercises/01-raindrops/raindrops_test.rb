# Raindrops
# Source: http://exercism.io/exercises/ruby/raindrops

# Write a program that converts a number to a string, the contents of which
# depends on the number's prime factors.

# If the number contains 3 as a prime factor, output 'Pling'.  If the number
# contains 5 as a prime factor, output 'Plang'.  If the number contains 7 as a
# prime factor, output 'Plong'.  If the number does not contain 3, 5, or 7 as a
# prime factor, just pass the number's digits straight through.

# Examples:
# * 28's prime-factorization is 2, 2, 7.  In raindrop-speak, this would be a simple
# "Plong".
# * 1755' prime-factorization is 3, 3, 3, 5, 13. In raindrop-speak,
# this would be a "PlingPlang".
# * The prime factors of 34 are 2 and 17.  Raindrop-speak doesn't know what to
# make of that, so it just goes with the straightforward "34".

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'raindrops'

class RaindropsTest < Minitest::Test
  def test_1
    assert_equal '1', Raindrops.convert(1)
  end

  def test_combinations
    [
      [1, "1"],
      [2, "2"],
      [3, "Pling"],
      [4, "4"],
      [5, "Plang"],
      [6, "Pling"],
      [7, "Plong"],
      [8, "8"],
      [9, "Pling"],
      [10, "Plang"],
      [11, "11"],
      [12, "Pling"],
      [13, "13"],
      [14, "Plong"],
      [15, "PlingPlang"],
      [16, "16"],
      [17, "17"],
      [18, "Pling"],
      [19, "19"],
      [20, "Plang"],
      [21, "PlingPlong"],
      [22, "22"],
      [23, "23"],
      [24, "Pling"],
      [25, "Plang"],
      [26, "26"],
      [27, "Pling"],
      [28, "Plong"],
      [29, "29"],
      [30, "PlingPlang"],
      [31, "31"],
      [32, "32"],
      [33, "Pling"],
      [34, "34"],
      [35, "PlangPlong"],
      [105, "PlingPlangPlong"]
    ].each do |num, text|
      assert_equal text, Raindrops.convert(num)
    end
  end
end
