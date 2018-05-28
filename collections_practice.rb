def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end  

def contain_a(array)
  a_array = []
  array.each do |word|
    a_present = word.include?("a")
    if a_present
      a_array.push(word)
    end  
  end 
  a_array
end  

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end 
end   

def remove_non_strings(array)
  string_only = []
  array.each do |word|
    string_confirm = word.is_a?(String)
    if string_confirm
      string_only.push(word)
    end  
  end  
  string_only
end  
    
def count_elements(array)  
  counting_arr = []
  array.each do |hash|
    hash[:count] = array.count do |current_hash|
      current_hash[:name] == hash[:name]
    end 
    found_hash = counting_arr.any? do |updated_hash|
      hash[:name] == updated_hash[:name]
    end  
    counting_arr.push(hash) unless found_hash
  end 
  counting_arr
end  

def merge_data(keys, data)
  merged_data = []
  keys.each do |hash|
    first_name = hash[:first_name]
  matching_hash = data.find do |bio_hash|
    bio_hash.key?(first_name)
  end
  merged_data.push(hash.merge(matching_hash[first_name]))
  end  
  merged_data
end  

def find_cool(array)
  array.select do |person|
    person[:temperature] == "cool"
  end
end  

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, details|
    location = details[:location]
    if organized_schools.key?(location)
      organized_schools[location].push(school)
    else 
      organized_schools[location] = [school] 
    end
  end  
  organized_schools
end   
