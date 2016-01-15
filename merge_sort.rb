def merge_sort(arr)
	l = arr.length
	return arr if l == 1
	if l > 1 		
		b = arr[0...l/2]
		c = arr[l/2..-1]
		b = merge_sort(b)
		c = merge_sort(c)
		a = merge(b,c)
	end
	return a
end

def merge(b, c)
	arr = []
	b_ind = 0
	c_ind = 0
	arr_ind = 0
	while b_ind < b.length && c_ind < c.length
		if b[b_ind] < c[c_ind]
			arr[arr_ind] = b[b_ind]
			b_ind += 1
		else
			arr[arr_ind] = c[c_ind]
			c_ind += 1
		end
		arr_ind += 1
	end

	if b_ind == b.length
		c[c_ind..-1].each do |x|
			arr[arr_ind] = x
			arr_ind += 1
		end
	else
		b[b_ind..-1].each do |x|
			arr[arr_ind] = x
			arr_ind += 1
		end
	end
	return arr
end

puts "enter several numbers"
arr = gets.chomp.split(" ").map!{|x| x.to_i}

a = merge_sort(arr)

print a
puts ""