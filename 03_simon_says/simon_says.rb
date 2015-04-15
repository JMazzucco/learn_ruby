def echo(word)
	word
end

def shout(word)
	word.upcase!
end

def repeat(word, num = 1)
	if num == 1
		final_s = "#{word} #{word}"
	else
		final_s = []
		num.times do
		final_s << word
		end
			final_s.join(' ')
	end
end

def start_of_word(word, char_amount)
	word[0..(char_amount - 1)]
end

def first_word(word)
	word.split[0]
end

def titleize(name)
	keep_lower = %w(and the over)
		final_s = name.split(' ')
		final_s.each do |word|
		word.capitalize! if final_s.index(word) == 0 || !(keep_lower.include?(word))
	end
		final_s.join(' ')
end
