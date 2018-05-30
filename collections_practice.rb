require 'pry'
def begins_with_r(tools)
  i = 0
  if block_given?
    new_tools = []
    while i < tools.length do
      binding.pry
      if tools[i] start_with?("r")
        new_tools.push(yield tools[i])
        i = i + 1
      end
    end
  end
  return new_tools
  else
  return "No block given"
end