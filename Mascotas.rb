class Perro

    def initialize(nombre = nil)
		@nombre =nombre		 
	end
	
	def get_nombre 
		return @nombre
	end
	
	def set_nombre(nombre)
		@nombre =nombre
	end
	
	def ladrar()
		puts "Guau!!!"
	end

end

class Gato

    def initialize(nombre = nil)
		@nombre =nombre		 
	end
	
	def get_nombre 
		return @nombre
	end
	
	def set_nombre(nombre)
		@nombre =nombre
	end
	
	def maullar()
		puts "Miau!!!"
	end

end


mi_perro = Perro.new("Camila")
puts "El  nombre de mi  perro es #{mi_perro.get_nombre}"
mi_perro.ladrar()

mi_gato = Gato.new("Misufu")
puts "El  nombre de mi  gato es #{mi_gato.get_nombre}"
mi_gato.maullar()


