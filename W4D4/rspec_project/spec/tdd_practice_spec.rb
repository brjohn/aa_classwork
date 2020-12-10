require 'rspec'
require 'tdd_practice'


describe 'Array#my_uniq' do
   it "works with an empty array" do
      expect([].my_uniq).to eq([]) 
   end

   it "returns new array without duplicate elements" do
      expect([1,3,4,3,1].my_uniq).to eq([1,3,4])
   end
end

