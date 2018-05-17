def begins_with_r(tools)
  tools.all? {|word| word[0] == 'r'}
end

def contain_a(array)
  array.select {|word| word.include?('a')}
end

def first_wa(array)
  array.select {|word| word.to_s[0..1] == 'wa'} .first
end

def remove_non_strings(array)
  array.select {|element| element.is_a?(String)}
end

def count_elements(array)
  new_array = []
  counted = []
  array.each do |hash|
    unless counted.include?(hash)
      counted << hash.clone
      count = 0
      array.each do |hash_check|
        if hash.eql?(hash_check)
          count += 1
        end
      end
      hash[:count] = count
      new_array << hash
    end
  end
  new_array
end

def merge_data(keys, data)
  new_array = []
  data_hash = data[0]
  keys.each do |key_hash|
    key = key_hash.values[0]
    new_array << key_hash.merge(data_hash[key])
  end
  new_array
end

def find_cool(array)
  array.select do |hash|
    hash.value?('cool')
  end
end

def organize_schools(school_hash)
  location_hash = {}
  school_hash.each do |school_name, info_hash|
    location = info_hash[:location]
    if location_hash.key?(location)
      location_hash[location] << school_name
    else
      location_hash[location] = [school_name]
    end
  end
  location_hash
end
