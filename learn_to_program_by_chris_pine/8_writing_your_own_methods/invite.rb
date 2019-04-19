# How about weddingNumber? It should work almost the same as weddingNumber,
# except that it should insert the word "and" all over the place, returning
# things like 'nineteen hundred and seventy and two', or however wedding
# invitations are supposed to look. I'd give you more examples, but I don't
# fully understand it myself. You might need to contact a wedding coordinator
# to help you.

def weddingNumber number
	if number < 0 # No negative numbers.
		return "Please enter the year you were married."
	end
	if number == 0
		return 'zero'
	end

	# No more sepcial cases! No more returns!

	numString = "" # This is the string we will return.

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
    'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
    'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
     'seventeen', 'eighteen', 'nineteen']

	# "left" is how much of the number we still have left to write out.
	# "write" is the part we are writing out right now.

	left = number

	write = left / 1000 # How many thousands left to write out?
	left = left - write * 1000 # Subtract off those thousands.

	if write > 0
		# Using recurrence to call back the original method
		thousands = weddingNumber write
		numString = numString + thousands + " thousand"
		if left > 0
			# So we don't write 'two thousandfifty-one'
			numString = numString + " and "
		end
	end

	write = left / 100 # How many hundreds left to write out?
	left = left - write * 100 # Subtract off those hundreds.

	if write > 0
		# Using recurrence to call back the original method
		hundreds = weddingNumber write
		numString = numString + hundreds + " hundred"
		if left > 0
			# So we don't write 'two hundredfifty-one'...
			numString = numString + " and "
		end
	end

	write = left / 10 # How many tens left to write out?
	left = left - write * 10 # Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
			# Since we can't write 'tenty-two' instead of 'twelve',
			# we have to make a special exception for these.
			numString = numString + teenagers[left - 1]
			# The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'
			# Since we took care of the digit in the ones place already,
			# we have nothing left to write
			left = 0
		else
			numString = numString + tensPlace[write - 1]
			# The "-1" is because tensPlace[3] is 'forty', not 'thirty'
		end

		if left > 0
			# So we don't write 'sixtyfour'...
			numString = numString + " and "
		end
	end

	write = left # How many ones left to write out?
	left = 0 # Subtract off those ones.

	if write > 0
		numString = numString + onesPlace[write - 1]
		# The "-1" is because onesPlace[3] is 'four', not 'three'.
	end

	# Now we just return "numString
	numString
end

puts weddingNumber(1984)
puts
