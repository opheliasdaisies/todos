# Reimplement your own version of Ruby Array's transpose method

class Array
  def my_transpose
    new_array = []
    unless self.length == 0 
      self[0].length.times { new_array << [] }
    end
    arr_index = 0
    self.each do |nested|
      item_index = 0
      nested.each do |item|
        new_array[item_index][arr_index] = item
        item_index += 1
      end
      arr_index += 1
    end
    new_array
  end
end

# [[1, 2, 3], [:a, :b, :c]].my_transpose #=> [[1, :a], [2, :b], [3, :c]]
# [[1,2], [3,4], [5,6]].transpose #=> [[1, 3, 5], [2, 4, 6]]
# [].transpose #=> []