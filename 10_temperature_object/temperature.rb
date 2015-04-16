class Temperature

	def self.in_celsius(temp)
	 		@cels_hash = Hash.new
	 		@cels_hash[:c] = temp.to_i
	 	 	new(@cels_hash)
	end

	def self.in_fahrenheit(temp)
			@fahr_hash = Hash.new
	 		@fahr_hash[:f] = temp.to_i
	 	 	new(@fahr_hash)
	end

	def initialize(temp)
		@temp = temp
	end

	def to_fahrenheit
			if @temp.has_key?(:c)
				cels = @temp[:c]
					return (cels.to_i * 9/5) + 32
				else
					return @temp[:f]
			end

		if @cels == nil && @fahr == true
			return @fahr
		elsif @cels == nil && @fahr == true
			return (cels.to_i * 9/5) + 32
		end
	end

	def to_celsius
			if @temp.has_key?(:f)
				fahr = @temp[:f].round
				return (fahr.to_i - 32) * 5/9
			else
				return @temp[:c]
			end
	end
end


class Celsius < Temperature
	def initialize(temp)
		@temp = Hash.new
	 	@temp[:c] = temp.to_i
	end

	def to_celsius
		super
	end

	def to_fahrenheit
		super
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@temp = Hash.new
	 	@temp[:f] = temp.to_i
	end

	def to_celsius
		super
	end

	def to_fahrenheit
		super
	end
end

