#Author: Maria Elena Quintero Villegas

class Animal
	def initialize(nombre, tipo)
			@miNombre=nombre
			@miTipo = tipo
	end	
	
	def setNombre(nombre)
			@miNombre = nombre
	end	
	
	def getNombre
			return @miNombre			
	end		
	
	def setTipo(tipo)
			@miTipo = tipo
	end	
	
	def getTipo
			return @miTipo			
	end	
	
	def hacerSonido()
		puts "Hace sonido"
	end
end

miAnimal = Animal.new("Camila","Perro")
miAnimal.hacerSonido()

puts "Su nombre es: #{miAnimal.getNombre}"
puts "Su tipo es: #{miAnimal.getTipo}"

puts "Teclea el  nombre del  animal: "
miAnimal.setNombre(gets.chomp)
puts "Teclea el  tipo del  animal: "
miAnimal.setTipo(gets.chomp)

puts "Su nombre es: #{miAnimal.getNombre}"
puts "Su tipo es: #{miAnimal.getTipo}"
