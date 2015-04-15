class Book

 def title=(new_string)
  	# @string = new_string.capitalize
  	keep_lower = %w(and a at an to in of the)
		final_s = new_string.split(' ')
		final_s.each do |word|
			word.capitalize! if final_s.index(word) == 0 || !(keep_lower.include?(word))
		end
		@string_caps = final_s.join(' ')
 end

 def title
     @string_caps
 end


end
