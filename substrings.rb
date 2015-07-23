def substrings(text,dictionary)
	#Separates text into an array of individual words
	words = text.scan(/\w+/)
	tempArray = []
	returnHash = Hash.new(0)
	#Each word is compared to every entry in the dictionary for matches
	words.each do |word|
		dictionary.each do |entry|
			if(word.downcase.match(entry))
				returnHash[entry] += 1
			end
		end
	end
	return returnHash
end