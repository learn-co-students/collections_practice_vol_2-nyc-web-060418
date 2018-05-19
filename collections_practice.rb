def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r" || "R")
  end
end

def contain_a(array)
  new_array = []
  array.each do |element|
    new_array << element if element.include?("a")
  end
  new_array
end

def first_wa(array)
  array.find do |element|
    if element[0..1] == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.class == String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(hash)
  array = []
  hash.each do |element|
    if element[:temperature] == "cool"
      array << element
    end
  end
  array
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end