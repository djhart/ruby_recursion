def fibs(n)
	a = 1
	b = 0
	n.times do 
		puts a 
		c = a
		a += b
		b = c 		
	end
	return a 
end

def fibs_rec(n)
	return n if (0..1).include? n
	fibs_rec(n-1) + fibs_rec(n-2) if n > 1
end

puts "how many"
n = gets.chomp.to_i
puts fibs_rec(n)