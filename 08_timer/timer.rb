class Timer
 def seconds=(num)
 		@num = num
 end

 def seconds
   	0
 end

 def time_string
 	if @num > 3600
 		hours = @num / 3600
 		hr = true
 	else
 		hours = 0
 		hr = false
 	end

	if hr && @num % 3600 != 0
 		mins = (@num % 3600) / 60
 		mn = true
 	elsif @num > 60
 		mins = @num / 60
 		mn = true
 	else
 		mins = 0
 		mn = false
 	end

 	if mn = true && ((@num % 3600) % 60 != 0)
 		secs = (@num % 3600) % 60
 	else
 		secs = 0
 	end

	 if hours.to_s.length < 2
	 	hour_append = 0
	 else
	 	hour_append = nil
	 end

	 if mins.to_s.length < 2
	 	min_append = 0
	 else
	 	min_append = nil
	 end

	 if secs.to_s.length < 2
	 	sec_append = 0
	 else
	 	sec_append = nil
	 end



"#{hour_append}#{hours}:#{min_append}#{mins}:#{sec_append}#{secs}"

 end

end