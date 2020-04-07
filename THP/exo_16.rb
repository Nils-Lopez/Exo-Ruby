puts "En quelle année es-tu né ?"
a = gets.chomp.to_i
b = 1
c = 0
while a < 2020
	a += 1
	c = 2020 - a
	puts " Il y a #{c} ans tu avais #{b} ans !"
	b += 1
end
