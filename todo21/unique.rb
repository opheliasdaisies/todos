# instructions: implement Array.uniq

class Array

  def uniq
    new_array = []
    self.each do |item|
      new_array.include?(item) ? new_array : new_array << item
    end
    new_array
  end

end