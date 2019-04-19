# Given a hash of family members, with keys as the title and an array of names
# as the values, use Ruby's built-in select method to gather only immediate
# family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = Array.new
family.select{ |k,v|
  if (k == :sisters) || (k == :brothers)
    immediate_family.push(v)
  end
}
immediate_family = immediate_family.flatten
puts "#{immediate_family}"
