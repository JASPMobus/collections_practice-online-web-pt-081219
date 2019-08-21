
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    -1 * (a <=> b)
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements_general(array, elt1, elt2)
  array.map do |elt|
    if elt == elt1
      elt2
    elsif elt == elt2
      elt1
    else
      elt
    end
  end
end

def swap_elements(array)
  swap_elements_general(array, array[1], array[2])
end

def reverse_array(array)
  retarray = []
  
  array.each do |item|
    retarray.unshift(item)
  end
  
  retarray
end

def kesha_maker(array)
  array.map do |str|
    cs = str.chars
    cs[2] = "$"
    cs.join
  end
end
