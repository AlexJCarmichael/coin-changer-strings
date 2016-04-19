
require 'minitest/autorun'
require 'minitest/pride'

def coin_changer(n)
  if n % 25 == 0
    quarters = "#{n/25} quarters"
  elsif n % 10 == 0
    dimes = "#{n/10} dimes"
  elsif n % 5 == 0
    nickles = "#{n/5} nickles"
  else
    pennies = "#{n} pennies"
  end
   return "#{quarters}" + "#{dimes}" + "#{nickles}" + "#{pennies}"
end

class CoinChangerTest < Minitest::Test

  # def test_returns_a_number
  #   assert_equal(5, coin_changer(5))
  #   assert_equal(8, coin_changer(8))
  #   assert_equal(10, coin_changer(10))
  # end

  def test_returns_pennies
    assert_equal "3 pennies", coin_changer(3)
    assert_equal "4 pennies", coin_changer(4)
    assert_equal "2 pennies", coin_changer(2)
  end

  def test_returns_nickles
    assert_equal "1 nickles", coin_changer(5)
    assert_equal "1 dimes", coin_changer(10)
    assert_equal "3 nickles", coin_changer(15)
  end

  def test_returns_dimes
    assert_equal "2 dimes", coin_changer(20)
    assert_equal "1 dimes", coin_changer(10)
    assert_equal "3 dimes", coin_changer(30)
  end

  def test_returns_quarters
    assert_equal "1 quarters", coin_changer(25)
    assert_equal "2 quarters", coin_changer(50)
    assert_equal "3 quarters", coin_changer(75)
  end

  def test_returns_multiple_coin_types
    assert_equal "1 quarters 3 pennies", coin_changer(28)
    assert_equal "2 quarters 1 dimes", coin_changer(60)
    assert_equal "3 quarters 1 nickles", coin_changer(90)
  end

end
