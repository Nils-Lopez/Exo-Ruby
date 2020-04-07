puts "On va compter le nombre d'heures de travail à THP"
#La ligne 3 calcule le nombre d'h à THP
puts "Travail : #{10 * 5 * 11}"
#Celle d'après refait le calcul mais multiplier par 60
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

puts "Et en secondes ?"
#Celle d'après refait le calcul mais multiplier par 3600
puts 10 * 5 * 11 * 60 * 60

puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"
#Cette ligne vérifie que le calcul est correct
puts 3 + 2 < 5 - 7
# les deux suivantes vérifie les 2	 opérations
puts "Ça fait combien 3 + 2 ? #{3 + 2}"
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

puts "Ok, c'est faux alors !"

puts "C'est drôle ça, faisons-en plus :"

puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"
#le #{} sert à insérer une variable, un calcul dans un sting
