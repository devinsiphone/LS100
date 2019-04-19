# proc_example.rb

talk = Proc.new {
  p "I am talking."
}

talk.call


talk2 = Proc.new { |name|
  p "I am talking to #{name}"
}

talk2.call("Devin")
