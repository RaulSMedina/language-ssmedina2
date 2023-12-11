require 'rspec'
require_relative 'calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe '#add' do
    it 'adds two numbers' do
      answer=calculator.add(6, 5)
      expect(answer).to eq(11)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      answer=calculator.subtract(10, 4)
      expect(answer).to eq(6)
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers' do
      answer=calculator.multiply(6, 6)
      expect(answer).to eq(36)
    end
  end

  describe '#divide' do
    it 'divides two numbers' do
      answer=calculator.divide(25, 5)
      expect(answer).to eq(5.0)
    end

    it 'raises an error when dividing by zero' do
      expect { calculator.divide(5, 0) }.to raise_error(ArgumentError, 'Cannot divide by zero')
    end
  end
end
