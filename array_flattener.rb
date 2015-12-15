def array_flattener(array)
  result = []
  array.each do |element|
     unless element.is_a? Array
       result << element
     else
       nested = array_flattener(element)
       nested.each { |element| result << element }
     end
  end
  result
end
