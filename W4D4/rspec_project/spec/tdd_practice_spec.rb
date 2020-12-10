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

describe 'Array#to_sum' do
   it "works with an empty array" do
      expect([].to_sum).to eq([]) 
   end
  
   it "returns a 2D array" do
      expect([1,2,-2,3].to_sum).to eq([[1,2]])
   end

   it "returns pairs of indices of elements whose sum is 0" do
      expect([1,2,-2,3,7,-7].to_sum).to eq([[1,2],[4,5]])
   end
end

describe 'Array#my_transpose' do
   it "works with an empty array" do
      expect([].to_sum).to eq([]) 
   end
   
end
