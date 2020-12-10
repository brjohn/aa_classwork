require 'rspec'
require 'tdd_practice'

describe Array do

   describe '#my_uniq' do
        it "takes in an array" do
           expect {my_uniq([1,2,2,3])}.not_to raise_error 
        end
    end


end