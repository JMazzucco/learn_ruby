def add(num1, num2)
	num1 + num2
end


def subtract(num1, num2)
	num1 - num2
end

def sum(num)
	num.inject(0) {|sum, num| sum + num}
end

def multiple(num, amount)
	total_sequence = [num]
	last_num = num

	(amount - 1).times do
	total_sequence << (last_num *= num)
	end
return total_sequence

end

def factorial(num)
	total_nums = []
	if num > 1
		num.times do
			total_nums	<< num
			num -= 1
			puts num
		end
	end
	total_nums.inject(1) {|fac, x| fac * x}
end



