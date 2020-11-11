require 'calculator'

# Create a calculator that adds, subtracts, divides and multiples. It should run in the terminal.

describe Calculator do 

    subject(:calculator) {Calculator.new}

    it 'creates a new instance of calculator' do 
        expect(calculator).to be_instance_of Calculator 
    end 

    it 'receives the method add ' do 
        expect(calculator).to respond_to :add  
    end 
end
