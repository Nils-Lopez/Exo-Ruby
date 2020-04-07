puts "En quelle année es-tu né ?"
a = gets.chomp.to_i
b = 1
while a < 2020
	a += 1
	puts "En #{a} tu avais #{b} ans !"
	b += 1
end
