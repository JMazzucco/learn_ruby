class Array

	 def sum
	   inject(0, &:+)
	 end

	  def self.sum
	   inject(0, &:+)
	 end

	 def square
	 	self.map {|x| x * x}
	 end

	 def square!
	 	self.map! {|x| x * x}
	 end

end


