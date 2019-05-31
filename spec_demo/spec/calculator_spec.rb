
require 'rspec'
require_relative '../../calculator'

describe Calculator do

    before { @calculator = Calculator.new('RSpec calculator') }

    it "should add two numbers correctly" do
        expect( @calculator.add(10,20) ).to eq 30
    end

    it "should subtract two numbers correclty" do 
        expect( @calculator.sub(50,5) ).to eq 45
    end

end

# test report of $> rspec

# FF

# Failures:

#   1) Calculator should add two numbers correctly
#      Failure/Error: expect( @calculator.add(10,20) ).to eq 30

#        expected: 30
#             got: -10

#        (compared using ==)
#      # ./spec/calculator_spec.rb:10:in `block (2 levels) in <top (required)>'

#   2) Calculator should subtract two numbers correclty
#      Failure/Error: expect( @calculator.sub(50,5) ).to eq 40
# PS D:\Web\couresa_RoR\spec_demo> rspec
# FF

# Failures:

#   1) Calculator should add two numbers correctly
#      Failure/Error: expect( @calculator.add(10,20) ).to eq 30

#        expected: 30
#             got: -10

#        (compared using ==)
#      # ./spec/calculator_spec.rb:10:in `block (2 levels) in <top (required)>'

#   2) Calculator should subtract two numbers correclty
#      Failure/Error: expect( @calculator.sub(50,5) ).to eq 45

#        expected: 45
#             got: 55

#        (compared using ==)
#      # ./spec/calculator_spec.rb:14:in `block (2 levels) in <top (required)>'

# Finished in 0.03126 seconds (files took 0.28008 seconds to load)
# 2 examples, 2 failures

# Failed examples:

# rspec ./spec/calculator_spec.rb:9 # Calculator should add two numbers correctly
# rspec ./spec/calculator_spec.rb:13 # Calculator should subtract two numbers correclty