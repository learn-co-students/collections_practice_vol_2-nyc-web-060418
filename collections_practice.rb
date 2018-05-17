def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array.push(element)
    end
  end
  return new_array
end

def first_wa(array)             #return the first element that begins with wa
  array.find do |element|       # array with .find
    element.start_with?("w")
  end                           # line 19 - need correct command
end

def remove_non_strings(array)
  array.delete_if do |element|
    element != element.to_s
  end
end


def count_elements(hash)       #count how many times something appears in array
  hash.detect do |key, value|               # hash .. maybe not .select
    hash.count(key) > 1
  end
end

def merge_data(keys, data)     # combined two nested data structures into one
  keys.flatten(data)           # hashes
end

def find_cool(hash)
  array = []    # find all cool hashes.  .select?
  hash.select do |key, value|
    value == cool
  end
end

def organize_schools(hash)
  hash.keys.sort!
end
