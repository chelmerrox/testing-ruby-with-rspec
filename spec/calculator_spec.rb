require './lib/calculator'

describe Calculator do
    describe "#add" do
      it "returns the sum of two numbers" do
        calculator = Calculator.new
        expect(calculator.add(5, 2)).to eql(7)
      end

       # add this
       it "returns the sum of more than two numbers" do
        calculator = Calculator.new
        expect(calculator.add(2, 5, 7)).to eql(14)
       end
    end

    describe "#subtract" do
      it "returns the difference of two number" do
        calculator = Calculator.new
        expect(calculator.subtract(10,2)).to eql(8)
      end

      it "returns the difference of two numbers" do
        calculator = Calculator.new
        expect(calculator.subtract(-5,-1)).to eql(-4)
      end

      it "returns the difference of more than two numbers" do
        calculator = Calculator.new
        expect(calculator.subtract(-1,-5, 6)).to eql(-2)
      end
    end

    describe "#multiply" do
      it "returns the product of two numbers" do
        calculator = Calculator.new
        expect(calculator.multiply(2,3)).to eql(6)
      end

      it "returns the product of two numbers" do
        calculator = Calculator.new
        expect(calculator.multiply(2,1)).to eql(2)
      end

      it "returns the product of more than two numbers" do
        calculator = Calculator.new
        expect(calculator.multiply(2,3,-1)).to eql(-6)
      end
    end

    describe "#divide" do
      it "returns the quotient of two numbers" do
        calculator = Calculator.new
        expect(calculator.divide(6,3)).to eql(2)
      end

      it "returns the quotient of two numbers" do
        calculator = Calculator.new
        expect(calculator.divide(6,-3)).to eql(-2)
      end

      it "returns the quotient of two numbers" do
        calculator = Calculator.new
        expect(calculator.divide(6,0)).to eql('Error! Can not divide by zero!')
      end

      it "returns the quotient of more than two numbers" do
        calculator = Calculator.new
        expect(calculator.divide(6,3,-2)).to eql(-1)
      end
    end
  end