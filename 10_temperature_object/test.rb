class Test
attr_reader :temp
	def self.in_celsius
		@temp =1
	end

	# def self.method_one
	# 	@@name = "John"
	# end

	# def method_two
	# 	return "#{@@name}"
	# end

end

# class TestTwo < Test

# 	def initialize
# 		super
# 	end

# end


one = Test.in_celsius
p one.temp

# class Temperature
# 	attr_reader :temp

# 	def self.in_celsius(temp)
# 	 		@temp = Hash.new
# 	 		@temp[:c] = temp.to_i
# 	end

# 	def methodtwo

# end

