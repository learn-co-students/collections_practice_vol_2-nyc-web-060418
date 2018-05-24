require 'pry'

# your code goes here
def begins_with_r(tools_array)
  tools_array.each do |word|
    if !(word.start_with?("r"))
      return false
    end
  end
  return true
end


def contain_a(array)
  array.select do |word|
    word if word.include?("a")
  end
end


def first_wa(array)
  (array.join(" ")).split.find do |word|
    word.start_with?("wa")
  end
end


def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end


def count_elements(array)
  result = []
  
  array.uniq.each do |element|
    result << element
    element.merge!( { :count => array.count(element) } )
  end

  result
end


def merge_data(keys, data)
  result = []
  
  data.each do |arr| 
    arr.each do |name, info|
      keys.each do |keys_arr|
        keys_arr.each { |name_k, name_v|
          result << keys_arr.merge(info) if name_v == name }
      end
    end
  end
  result
end


def find_cool(arr)
  result = []
  arr.each do |hash|
    hash.collect do |key, val|
      result << hash if key == :temperature && val == "cool" 
    end
  end
  result
end


def organize_schools(schools_hash)
  result = {}
  
  cities = schools_hash.collect { |name, location| location.values[0] }.uniq
  cities.each {|city| result.merge!( {city => []} ) } 
  
  schools_hash.each do |name, location|
    result.each do |city, arr|
      result[city] << name if location.values[0] == city
    end
  end
  
  result
end
