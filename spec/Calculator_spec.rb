require 'calculator'

# Create a calculator that adds, subtracts, divides and multiples. It should run in the terminal.

describe Calculator do 

    subject(:calculator) {Calculator.new}

    it 'creates a new instance of calculator' do 
        expect(calculator).to be_instance_of Calculator 
    end 

    it 'receives the method add' do 
        expect(calculator).to respond_to :add  
    end 

    it 'allows the add method to receive two integers as arguments' do 
        expect(calculator).to respond_to(:add).with(2).arguments 
    end

    it 'adds the two integers together' do 
        expect(calculator.add(10,10)).to eq "The answer is 20"
    end

    it 'subtracts the two integers' do 
        expect(calculator.subtract(20,10)).to eq "The answer is 10"
    end

    it 'Multiplies the two integers' do 
        expect(calculator.multiply(20,20)).to eq "The answer is 400"
    end
end
