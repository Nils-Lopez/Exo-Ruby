puts "Tu veux combien d'étages ?"
print ">"
num = gets.chomp.to_i
etage = "#"
puts "voici ta pyramide :"
num.times.each do 
	puts etage
	etage += "#"
end
