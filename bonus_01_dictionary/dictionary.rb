class Dictionary
	def entries
	 @entry
	end

	def add(entry)
		#if a string is passed as an arg, add it as the value to a new Hash and set the value to nil.
		if entry.is_a? String
			@entry = {}
			@entry[entry] = nil
		end

		@entry = entry if entry.is_a? Hash

		#now @entry is a hash with a single k-v pair, regardless of what was passed as the arg.
		#@dictionary contains all @entry k-v pairs
		@dictionary ||= {}
		@dictionary[@entry.keys[0]] = @entry.values[0]

	end

	def keywords
		@dictionary.keys.sort
	end

	def include?(keyword)
		@entry ||= nil
		if @entry
			if @entry.include?(keyword)
				return true
			else
				return false
			end
		end
	end

	def find(keyword)
		p @entry.class
		# @entry ||= nil
		unless @entry.nil?
			 @dictionary.select {|k, v| k.include?(keyword)}
		end


	end

end

test = Dictionary.new
# # test.add('dog')
# test.entries
# test.add('fish' => "wewede")
# test.add("fruit")
test.find("wef")


