#Author: Juana María González Juárez
#Date: 04/Mayo/2016
class Object
	def initialize(position_x = nil, position_y= nil, weight = nil)
		@position_x = position_x
		@position_y = position_y
		@weight = weight
	end

	def caracteristicas
		 return "Las caracteristicas del vehiculo son..."
	end

	attr_accessor(:position_x, :position_y, :weight)
end

class Weapon < Object
	def initialize(position_x = nil, position_y = nil, weight = nil, demage = nil, success_msg = nil, failure_msg = nil)
		super(position_x, position_y, weight)
		@demage = demage
		@success_msg = success_msg
		@failure_msg = failure_msg
	end
	attr_accessor(:demage, :success_msg, :failure_msg)

end

class Agent < Object
	def initialize(position_x = nil, position_y = nil, weight = nil, health= nil, strength = nil, name = nil, current_weapon = nil)
		super(position_x, position_y, weight)
		@health = health
		@strength = strength
		@name = name
		@current_weapon = current_weapon
	end
	attr_accessor(:health, :strength, :name, :current_weapon)
end


