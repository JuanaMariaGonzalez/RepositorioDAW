#Author: Juana María González Juárez
#Date: 04/Mayo/2016
class Mascota
	def initialize(tipoMascota = nil, sonido = nil)
		@tipoMascota = tipoMascota
		@sonido = sonido
	end
	
	def set_tipoMascota(tipoMascota)
		@tipoMascota = tipoMascota
	end	
	def get_tipoMascota
		return @tipoMascota
	end

	def set_sonido(sonido)
		@sonido = sonido
	end
	def get_sonido
		return @sonido
	end
	def to_s #sobreecribimos el método por defecto to_s
		"La mascota #{@tipoMascota} hace el sonido de #{@sonido}\n"
	end
end
perro = Mascota.new
perro.set_tipoMascota("Perro")
perro.set_sonido("Wuuaa-Wuuaa")
print "La mascota es de tipo #{perro.get_tipoMascota} y hace el sonido de #{perro.get_sonido}\n"
gato = Mascota.new("Gato","Miauh-Miauh")
puts gato.to_s

