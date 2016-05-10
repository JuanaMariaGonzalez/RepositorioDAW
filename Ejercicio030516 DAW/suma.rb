#Author: Juana María González Juárez
#Date: 03/Mayo/2016
def suma(numero1, numero2)
	suma =  numero1 + numero2
	puts "#{numero1} + #{numero2} = #{suma}"
end
puts "Teclea el primer numero: "
numero1 = gets.chomp.to_i
puts "Teclea el segundo numero: "
numero2 = gets.chomp.to_i
suma(numero1,numero2)