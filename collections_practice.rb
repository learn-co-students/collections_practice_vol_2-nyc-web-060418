require "pry"
def begins_with_r(tools)
  tools.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
new_array = []
  array.each do |word|
    if word.include?("a")
    new_array << word
    end
  end
  new_array
end

def first_wa(array)
  new_array = []
  array.each do |word|
      word = word.to_s
      new_array.push(word)
  end
  new_array.find do |word|
    word.start_with?('wa')
  end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(array)
array.uniq.each do |i|
  count = 0
  array.each do |i2|
    if i2 == i
      count += 1
    end

  end
  i[:count] = count
end
end

def merge_data(keys, data)
  new_data = []
  keys.each do |i|
    data.first.map do |k, v|
      if i.values[0] == k
        new_data << i.merge(v)
      end
    end
  end
  new_data
end

def find_cool(cool)
  cool_array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_array << person
    end
  end
  cool_array
end

def organize_schools(schools)
  new_hash = {}
  schools.collect do |k, v|
    #
    new_hash[v[:location]] = []

    end
    new_hash.each do |k, v|
      schools.each do |k1, v1|
        if k == v1[:location]
          v << k1
        end
      end
    end
end
