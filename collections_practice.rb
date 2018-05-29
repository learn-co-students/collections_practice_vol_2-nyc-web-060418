# your code goes here
def begins_with_r(array)
  array.all? do |i|
    i[0] == "r"
  end
end

def contain_a(array) 
  result = []
  array.each do |i|
    a_include = i.include?("a")
    result.push(i) if a_include 
  end
  result
end 

def first_wa(array)
  array.find do |i|
    i[0] == 'w' && i[1] == 'a'
  end
end 

def remove_non_strings(array)
  array.delete_if do |i|
    i.class != String 
  end 
end

def count_elements(array)
  result = []
  array.uniq.each do |i|
    result << i 
    i.merge!({:count => array.count(i)})
  end 
  result
end

def merge_data(key, list) 
  result = []
  list.each do |i|
    i.each do |name, info|
      key.each do |keys|
        keys.each{ |k, v|
          result << keys.merge(info) if v == name }
      end
    end
  end
  result
end

def find_cool(array)
  result= []
  array.each do |i|
    i.collect do |key, value|
      result << i if key == :temperature && value == "cool"
    end
  end
  result
end 

def organize_schools(schools)
  result = {}
  schools.each do |school, data|
    loc = data[:location]
    if result.key?(loc)
     result[loc].push(school) 
    else 
     result[loc] = [school]
    end
  end
  result
end 


