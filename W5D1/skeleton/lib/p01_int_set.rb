require 'byebug'
class MaxIntSet
  attr_reader :store
  def initialize(max)
    @max = max
    @store = Array.new(@max)
  end

  def insert(num)
    @store[num] = true
    raise 'Out of bounds' if num >= @max || num < 0
  end

  def remove(num)
    store[num] = false
  end

  def include?(num)
    store[num] == true
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  attr_reader :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def num_buckets
    @store.length
  end

  def [](num)
    @store[num % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    resize! if @count == num_buckets
    self[num] << num && @count += 1 if !include?(num)
    
  end

  def remove(num)
    self[num].delete(num) && @count -= 1 if include?(num)
  end

  def include?(num)
    self[num].include?(num) 
  end

  private

  def [](num)
    @store[num % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    prev_num_buckets = num_buckets
    new_arr = []
    prev_num_buckets.times {@store << []}
    prev_eles = @store.flatten
    prev_eles.each do |ele|
      self[ele].delete(ele)
      self[ele] << ele
    end
  end
end
