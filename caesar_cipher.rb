def caesar_cipher(text,shiftNum)
	num = shiftNum
	wordArray = text.split("")
	newTextArray = []
	#translating individual characters in wordArray
	wordArray.each do |t|
		for i in 1..num
			t.next!
		end
		#Strips t down to a single character
		if(t.length > 1)
			t = t[1]
		end
		newTextArray << t
	end

	#Replaces special charcters with their appropriate translation in the cipher
	newTextArray.each do |x|
		if (newTextArray[(newTextArray.index(x))] == "%")
			newTextArray[(newTextArray.index(x))] = " "
		elsif(newTextArray[(newTextArray.index(x))] == "&")
			newTextArray[(newTextArray.index(x))] = "!"
		end
	end

	return newTextArray.join()
end