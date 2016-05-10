class Object
	attr_accessor :position_x, :position_y, :weight
	
	def initialize(position_x=nil, position_y=nil, weight=nil)
		@position_x = position_x
		@position_y = position_y
		@weight =weight	
	
	end
	
end

class Weapon < Object
	attr_accessor :damage, :success_msg, :failure_msg
	def initialize(position_x=nil, position_y=nil, weight=nil,damage=nil, success_msg=nil, failure_msg=nil)	
		super(position_x,position_y,weight)
		@damage = damage
		@success_msg = success_msg
		@failure_msg = failure_msg
	end
end

class Agent < Object
	attr_accessor :health, :strength, :name, :current_weapon
	
	def initialize( position_x=nil, position_y=nil,weight=nil,health=nil, strength=nil, name=nil, current_weapon=nil)
		super(position_x,position_y,weight)
		@health = health
		@strength = strength
		@name = name
		@current_weapon = current_weapon
	end
	
end

mi_agent = Agent.new(nil,nil,nil,100,100,"Robocop","Lazer")
puts "El  nombre de mi  agentes es #{mi_agent.name}"

mi_weapon = Weapon.new(nil,nil,nil,23,"No","No")
puts "El daño  de mi  arma es #{mi_weapon.damage} "