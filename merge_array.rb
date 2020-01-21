  class MergeArray
      
    def merge(array1,array2)
        array3=[]
        array1.delete("")
        array2.delete("")
        array1.length<array2.length ? maxlength=array1.length : maxlength=array2.length 
        
        for i in 0...maxlength
          array3[i]=array1[i] + array2[array2.length-1-i]
        end   
        array3
    end
  end
  array1=["a","b","c",""]
  array2=["","d","e","","f","u"]
  obj=MergeArray.new
  print obj.merge(array1,array2)
   
