number = 00
50.times do 
	number += 1
	mail = ["jean#{number}@gmail.com"]
	if number.even?
		puts mail
	end
	
end
