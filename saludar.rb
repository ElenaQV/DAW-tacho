#Author: Maria Elena Quintero Villegas

def saludar(nombre)
	
		puts "Hola #{nombre}".center(10, ' ')
		puts "\n\n\n\tTeclea enter para continuar"
		gets.chomp
		system('cls')
end
puts "Teclea tu nombre: "
nombre = gets.chomp
saludar(nombre)

