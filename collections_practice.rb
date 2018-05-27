def begins_with_r(array)
  counter = 0
  array.each do |name|
    if name[0] != "r"
      return false
    else
      next
    end
  end
  return true
end

def contain_a(array)
  helper_array = []
  array.each do |element|
    char_array = element.chars
    if char_array.include?("a")
      helper_array.push element
    else
      next
    end
  end
  return helper_array
end

def first_wa(array)
  array.each do |element|
    if element[0] + element[1] == "wa"
      return element
    else
      next
    end
  end
end

def remove_non_strings(array)
  helper_array = []
  array.each_with_index do |element, index|
    if element.class == String
      helper_array.push element
    else
      next
    end
  end
  return helper_array
end

def count_elements(array)
  helper_array = []
  helper_hash = {}
  counter = Hash.new 0
  array.each do |element|
    counter[element] += 1
  end
  counter_keys = counter.keys
  counter_values = counter.values
  counter_keys.each_with_index do |element, index|
    helper_hash = element
    helper_hash[:count] = counter_values[index]
    helper_array.push helper_hash
    helper_hash = {}
  end
  return helper_array
end

def merge_data(first_array, second_array)
  helper_array_one = []
  helper_array_two = []
  merged_data = []
  helper_hash_one = {}
  helper_hash_two = {}
  first_array.each do |hash|
    hash.each do |category, value|
      if value == "blake"
        helper_array_one.push category
        helper_array_one.push value
      elsif value == "ashley"
        helper_array_two.push category
        helper_array_two.push value
      end
    end
  end
  second_array.each do |hash|
    hash.each do |name, qualities|
      qualities.each do |category, value|
        if name == "blake"
          helper_array_one.push category
          helper_array_one.push value
        elsif name == "ashley"
          helper_array_two.push category
          helper_array_two.push value
        end
      end
    end
  end
  helper_array_one.each_with_index do |item, index|
    helper_hash_one[item] = helper_array_one[index + 1]
    helper_array_one.shift
  end
  merged_data.push helper_hash_one
  helper_array_two.each_with_index do |item, index|
    helper_hash_two[item] = helper_array_two[index + 1]
    helper_array_two.shift
  end
  merged_data.push helper_hash_two
  return merged_data
end

def find_cool(array)
  helper_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
    helper_array.push hash
    end
  end
  return helper_array
end

def organize_schools(hash)
  nyc_schools = []
  sf_schools = []
  chicago_schools = []
  school_hash = {
    "NYC" => nyc_schools,
    "SF" => sf_schools,
    "Chicago" => chicago_schools
  }
  hash.each do |school_name, place|
    place.each do |location_key, city|
      if city == "NYC"
        nyc_schools.push school_name
      elsif city == "SF"
        sf_schools.push school_name
      else
        chicago_schools.push school_name
      end
    end
  end
return school_hash
end
