require 'minitest/autorun'
require_relative 'francis'

class FrancisTest < MiniTest::Test
  attr_reader :teen

  def setup
    @teen = ::Francis.new
  end

  def test_stating
    assert_equal 'Whatevs.', teen.yo('Oh blah di, oh blah da.')
  end

  def test_yelling
    assert_equal 'Chill!', teen.yo('GOOOAAAALLL!')
  end

  def test_inquiring
    assert_equal 'Sure.', teen.yo('Did you finish your homework?')
  end

  def test_inquiring_with_number
    assert_equal 'Sure.', teen.yo('Was the score 1 to nil?')
  end

  def test_stating_excitedly
    assert_equal 'Whatevs.', teen.yo("I love that book!")
  end

  def test_stating_with_acronyms
    assert_equal 'Whatevs.', teen.yo("NPR just had a good piece on the BBC.")
  end

  def test_yelling_questions
    assert_equal 'Chill!', teen.yo('WHAT IS YOUR PROBLEM?')
  end

  def test_yelling_numbers
    assert_equal 'Chill!', teen.yo('3, 2, 1 CONTACT!')
  end

  def test_only_numbers
    assert_equal 'Whatevs.', teen.yo('1, 2, 3')
  end

  def test_question_with_just_numbers
    assert_equal 'Sure.', teen.yo('7?')
  end

  def test_yelling_with_special_characters
    assert_equal 'Chill!', teen.yo('ZOMG WE 1 THE WORLD @*&#%$^ CUP!1!11!')
  end

  def test_yelling_without_punctuation
    assert_equal 'Chill!', teen.yo('PAY ATTENTION')
  end

  def test_stating_with_odd_punctuation
    assert_equal 'Whatevs.', teen.yo("Then I was like 'You good?'.")
  end

  def test_inquiring_eventually
    assert_equal 'Sure.', teen.yo("Woah! Hold up. Who said that?")
  end

  def test_ignoring
    assert_equal 'See if I care!', teen.yo('')
  end

  def test_prolonged_ignoring
    assert_equal 'See if I care!', teen.yo('    ')
  end

  def test_multiple_lines
    assert_equal 'Whatevs.', teen.yo(%{
Is this done yet?
no})
  end
end
