
require 'test/unit'
require_relative 'calculator'



# definition of CalculatorTest
class CalculatorTest < Test::Unit::TestCase

    def setup
        @calc = Calculator.new('test')
    end


    def test_addition
        assert_equal 4, @calc.add(1, 3)
    end


    def test_subtraction
        assert_equal 8, @calc.sub(10, 2)
    end



    def test_multiplication
        assert_equal 30, @calc.mul(5, 6)
    end



    def test_division
        assert_equal 2, @calc.div(16, 8)
    end


    def test_zero_division
        assert_raise ZeroDivisionError do
            @calc.div(10, 0)
        end
    end



end


# Test report of $>ruby calculator_test.rb


# Started
# F
# ===============================================================================
# Failure: test_addition(CalculatorTest)
# d:/Web/couresa_RoR/calculator_test.rb:16:in `test_addition'
#      13: 
#      14: 
#      15:     def test_addition
#   => 16:         assert_equal 4, @calc.add(1, 3)
#      17:     end
#      18: 
#      19: 
# <4> expected but was
# <-2>
# ===============================================================================
# ..F
# ===============================================================================
# Failure: test_subtraction(CalculatorTest)
# d:/Web/couresa_RoR/calculator_test.rb:21:in `test_subtraction'
#      18: 
#      19: 
#      20:     def test_subtraction
#   => 21:         assert_equal 8, @calc.sub(10, 2)
#      22:     end
#      23: 
#      24: 
# <8> expected but was
# <12>
# ===============================================================================
# .

# Finished in 0.008932 seconds.
# ------
# 5 tests, 5 assertions, 2 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# 60% passed
# ------
# 559.79 tests/s, 559.79 assertions/s

# [Done] exited with code=1 in 0.416 seconds