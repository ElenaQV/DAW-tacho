#Author: Maria Elena Quintero Villegas

class Persona
	def initialize(nombre, edad, genero)
			@miNombre=nombre
			@miEdad = edad
			@miGenero =genero
	end
   
    def initialize()
			
	end	   
	
	def setNombre(nombre)
			@miNombre = nombre
	end	
	
	def getNombre
			return @miNombre			
	end		
	
	def setEdad(edad)
			@miEdad = edad
	end	
	
	def getEdad
			return @miEdad			
	end	
	
	def setGenero(genero)
			@miGenero = genero
	end	
	
	def getGenero
			return @miGenero		
	end	
	
	def cantar()
		puts "La persona está cantando"
	end
end

miPersona = Persona.new()
puts "Teclea el  nombre de la  persona: "
miPersona.setNombre(gets.chomp)

puts "Teclea la  edad de la  persona: "
miPersona.setEdad(gets.chomp)

puts "Teclea el  genero de la  persona: "
miPersona.setGenero(gets.chomp)

miPersona.cantar()
puts "Su nombre es: #{miPersona.getNombre}"
puts "Su edad es: #{miPersona.getEdad}"
puts "Su genero es: #{miPersona.getGenero}"
