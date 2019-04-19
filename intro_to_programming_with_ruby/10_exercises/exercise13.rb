# Using the hash you created from the previous exercise, demonstrate how you
# would access Joe's email and Sally's phone number?

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]

joes_email = contacts["Joe Smith"][0]
sallys_phone = contacts["Sally Johnson"][2]

puts "Joe Smith's email is #{joes_email}."
puts "Sally Johnson's phone number is #{sallys_phone}."
