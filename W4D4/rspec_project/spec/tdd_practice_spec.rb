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
   let(:arr1) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
   it "works with an empty array" do
      expect([].my_transpose).to eq([]) 
   end

   it "transposes all rows to columns and returns new matrix" do
      expect(arr1.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
   end
end

# take in an array
# [3,0,4,77,1,2,2,3,5,4] => [1,3]

describe "Array#stock_picker" do
   let(:arr) {[3,0,4,77,1,2,2,3,5,4]}
   it "returns indices of most profitable buy/sell days" do
      expect(arr.stock_picker).to eq([1,3])
   end
end