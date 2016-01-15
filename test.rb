def merge(b, c)
	#print "b = #{b} c = #{c} \n"
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

arr = [6,12,13,45,1,16,18,70]
#arr = [1,2]#,3,4,5,6,8,7]
l = arr.length
b = arr[0...l/2]
c = arr[l/2..-1]

f = merge(b,c)
print f