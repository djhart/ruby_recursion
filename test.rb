arr = [1,2,3,4,5,6,8,7]
l = arr.length
b = arr.slice!(0...l/2)
c = arr.collect{|x| x}
print "b = #{b}"
puts ""
print "c = #{c}"
puts "" 