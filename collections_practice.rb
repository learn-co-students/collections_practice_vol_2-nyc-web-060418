# your code goes here
require 'pry'

def begins_with_r(array)
  r_count = 0
  array.each do |element|
    if element[0,1] == "r" || element[0,1] == "R"
      r_count += 1
    else
      return false
    end
  end
  if r_count == array.length
    return true
  end
end

def contain_a(array)
  returnArray = []
  array.each do |element|
    if element.include?("a") || element.include?("A")
      returnArray.push(element)
    end
  end
  returnArray
end

def first_wa(array)
  array.each do |element|
    elemString = element.to_s
    if elemString.start_with?("wa") || elemString.start_with?("Wa")
      return element
    end
  end
  return nil
end

def remove_non_strings(array)
  returnArray = []
  array.each do |element|
    if element.class == String
      returnArray.push(element)
    end
  end
  returnArray
end

def count_elements(array)
  returnArray = []
  array.each do |element|
    count = array.count(element)
    element[:count] = count
    returnArray.push(element)
    array.delete(element)
  end
  returnArray
end

def merge_data(array1,array2)
  returnArray = []
  array1.each do |array_1_child|
    push_hash = array_1_child
    array2.each do |array_2_str|
      array_2_str.each do |array_2_str_child|
        if array_2_str_child.first == array_1_child.first[1]
          push_hash = push_hash.merge(array_2_str_child[1])
          returnArray.push(push_hash)
        end
      end
    end
  end
  returnArray
end

def find_cool(array)
  returnArray = []
  array.each do |one_level_down|
    one_level_down.each do |key, value|
      if value == "cool"
        returnArray.push(one_level_down)
      end
    end
  end
  returnArray
end

def organize_schools(array)
  return_hash = {}
  array.each do |one_level_down|
    if return_hash[one_level_down.last.first[1]] == nil
      return_hash[one_level_down.last.first[1]] = [one_level_down.first]
    else
      return_hash[one_level_down.last.first[1]].push(one_level_down.first)
    end
  end
  return_hash
end
