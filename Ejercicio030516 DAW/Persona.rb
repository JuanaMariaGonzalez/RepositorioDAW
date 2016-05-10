#Author: Juana María González Juárez
#Date: 03/Mayo/2016
class Persona
	def initialize(nombre, genero, edad)
		@nombre = nombre
		@genero = genero
		@edad = edad
	end
	
	def setNombre(nombre)
		@nombre = nombre
	end
	def getNombre 
		return @nombre
	end

	def setGenero(genero)
		@genero = genero
	end
	def getGenero
		return @genero
	end

	def setEdad(edad)
		@edad = edad
	end
	def getEdad
		return @edad
	end
end
persona = Persona.new("","","")
puts "Teclea el nombre de la persona"
persona.setNombre(gets.chomp)
puts "Teclea el genero de la persona"
persona.setGenero(gets.chomp)
puts "Teclea la edad de la persona"
persona.setEdad(gets.chomp)
puts "El nombre de la persona es: #{persona.getNombre}"
puts "El genero de la persona es: #{persona.getGenero}"
puts "La edad de la persona es: #{persona.getEdad}"
