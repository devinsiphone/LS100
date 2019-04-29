# passing_block.rb

def take_block(&block)
  block.call
end

take_block {
  p "Block being called in the method!"
}


def take_block2(number, &block)
  block.call(number)
end

number = 42
take_block2(number) { |num|
  p "Block being called in the method! #{num}"
}
