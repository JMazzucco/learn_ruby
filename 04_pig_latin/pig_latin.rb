def translate(phrase)
latin_array = []
phrase_array = phrase.split(' ')
	phrase_array.each do |word|
		word_array = word.split(/[aeio]/, 2)
		n = word_array[0].length
		lost_char = word.split('')[n]
		latin_array << word_array.reverse.insert(0, lost_char).push('ay').join('')
	end
latin_array.join(' ')
end
