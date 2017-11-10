class User_Class
  
  attr_accessor :weapon_name, :shield_name, :weapon_damage, :weapon_generator, :shield_generator, :health, :speed
  
  def initialize(weapon_name, shield_name, weapon_damage, weapon_generator, shield_generator, health, speed) 
                                      
    @weapon_name = weapon_name
    @shield_name = shield_name
    @weapon_damage = weapon_damage
    @weapon_generator = weapon_generator
    @shield_generator = shield_generator
    @health = health
    @speed = speed
    
  end  
  
end

class Enemy_Class
  
  attr_accessor :damage_generator, :enemy_damage ,:health, :speed
  
  def initialize(damage_generator, enemy_damage, health, speed)
    
    @enemy_damage = enemy_damage                           
    @damage_generator = damage_generator
    @health = health
    @speed = speed
    
  end
  
end

