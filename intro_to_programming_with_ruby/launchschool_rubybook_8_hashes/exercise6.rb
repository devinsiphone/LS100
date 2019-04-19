# Given the array...
#
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
#
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}                 # create new hash named result
words.each { |word|         # iterate each word in words array. "word" variable will have value at a particular iteration
  key = word
  .chars                    # splits word, if word is 'demo' on iteration then it will be: `['d', 'e', 'm', 'o']`
  .sort                     # sorts the splitted array, i.e. the array above will be: `['e', 'd', 'm', 'o']`
  .join                     # joins the array sorted in above operation, it will be: 'edmo'. Since this is last operation, it will be returned and saved in `key` variable
  if result.has_key?(key)   # check whether 'result' already has key: `edmo`, returns true if present
    result[key].push(word)  # result['edmo'] will give an array value, which can push word in that array
  else                      # false when 'key' is not present in 'result'
    result[key] = [word]    # then add 'key' with an array such as: `result['edmo] = ['demo']`
  end
}

puts ""
result.each { |key,value|
 puts "#{value}"
}
puts ""
