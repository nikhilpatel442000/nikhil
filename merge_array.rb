# frozen_string_literal:true

# Mereg array
class MergeArray
  def merge(array1, array2)
    array3 = []
    array1.delete('')
    array2.delete('')
    (0...maxlength(array1, array2)).each do |i| 
      array3[i] = array1[i] + array2[array2.length - 1 - i] 
    end  
    array3
  end

  def maxlength(array1, array2)
    [array1.length, array2.length].max
  end  

end
obj = MergeArray.new
print obj.merge(['a', 'b', 'c', ''], ['', 'd', 'e', '', 'f', 'u'])
