#Author: Maria Elena Quintero Villegas

def suma(n1,n2)
	
		resultado= n1.to_i+n2.to_i
		puts "Resultado: #{n1} + #{n2} = #{resultado}".center(80, ' ')		
		gets.chomp
		system('cls')
end
puts "Teclea el primer número: "
n1 = gets.chomp
puts "Teclea el segundo número: "
n2 = gets.chomp
suma(n1,n2)