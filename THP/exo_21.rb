puts "Tu veux combien d'étages ?"
print ">"
num = gets.chomp.to_i
etage = "#"

puts "voici ton escalier :"
num.times.each do 	
	space = " " * num
	puts space + etage
	etage += "#"
	num = num - 1
end
