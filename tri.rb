#Author: Maria Elena Quintero Villegas

def tri(b,a)
	
		resultado= (b.to_f*a.to_f)/2
		puts "El área: #{resultado}".center(80, ' ')		
		gets.chomp
		system('cls')
end
puts "Teclea la base: "
b = gets.chomp
puts "Teclea la altura: "
a = gets.chomp
tri(b,a)