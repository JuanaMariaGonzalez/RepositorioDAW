#Author: Juana María González Juárez
#Date: 03/Mayo/2016
def areaTriangulo(base, altura)
	area = (base * altura)/2
	puts "El area del traingulo es = #{area}"
end
puts "Teclea la base del traingulo: "
base = gets.chomp.to_i
puts "Teclea la altura del triangulo: "
altura = gets.chomp.to_i
areaTriangulo(base,altura)