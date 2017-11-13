class Basic_Game_Elements_Class
  
  def start_game
    weapon_number = get_weapon_user_input()
    weapon_name = weapon_name_generator(weapon_number)
    shield_generator = get_shield_user_input()
    shield_name = shield_name_generator(shield_generator)
    health = rand(100...200)
    your_speed = rand(1...100)
    $User_Info = User_Class.new(weapon_name, shield_name, 0, weapon_number, shield_generator, health, your_speed)
    
    damage_generator = rand(1...5)
    enemy_health = rand(100...200)
    enemy_speed = rand(1...100)
    $Enemy_Info = Enemy_Class.new(damage_generator, 0, enemy_health, enemy_speed)
    
    $Main_Game_Elements_Class.method_for_main_game()
    new_game()
  end
  
  def run_command_activated(user_health)
    run_chance_generator = rand(1...101)
    if run_chance_generator > 69
      run_chance = true
      puts "You have successfully run from the enemy!"
      puts ""
    else
      run_chance = false
      puts "Running was unsuccessful!"
      puts ""
      enemy_critical_generator = rand(1...101)
      if enemy_critical_generator >= 90
        enemy_critical_attack($Enemy_Info.damage_generator)
        user_health = user_health - $Enemy_Info.enemy_damage
        if user_health < 0
          user_health = 0
        end
        puts "Critical hit! The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
        puts ""
        if user_health <= 0
          puts "You have been defeated"
          puts ""
        end
      else
        enemy_attack($damage_generator)
        user_health = user_health - $Enemy_Info.enemy_damage
        if user_health < 0
          user_health = 0
        end
        puts "The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
        puts ""
        if user_health <= 0
          puts "You have been defeated"
          puts ""
        end
      end
    end
    return run_chance, user_health
  end
      
  def enemy_greater_speed(enemy_health, user_health)
    
    enemy_critical_generator = rand(1...101)
    if enemy_critical_generator >= 90
      enemy_critical_attack($Enemy_Info.damage_generator)
      user_health = user_health - $Enemy_Info.enemy_damage
      if user_health < 0
        user_health = 0
      end
      puts ""
      puts "Critical hit! The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
      puts ""
      if user_health <= 0
        puts "You have been defeated"
        puts ""
      end
    else
      enemy_attack($Enemy_Info.damage_generator)
      user_health = user_health - $Enemy_Info.enemy_damage
      if user_health < 0
        user_health = 0
      end
      puts ""
      puts "The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
      puts ""
      if user_health <= 0
        puts "You have been defeated"
        puts ""
      end
    end

    if user_health > 0
      critical_chance = rand(1...101)
      if critical_chance >= 90
        critical_attack($User_Info.weapon_generator)
        enemy_health = enemy_health - $User_Info.weapon_damage
        if enemy_health < 0
          enemy_health = 0
        end
        puts ""
        puts "Critical hit! You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
        puts ""
        if enemy_health <= 0
          puts "The enemy has been defeated"
          puts ""
        end
      else
        attack($User_Info.weapon_generator)
        enemy_health = enemy_health - $User_Info.weapon_damage
        if enemy_health < 0
          enemy_health = 0
        end
        puts ""
        puts "You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
        puts ""
        if enemy_health <= 0
          puts "The enemy has been defeated"
          puts ""
        end
      end
    end
    
    return enemy_health, user_health
  end
  
  def enemy_less_speed(enemy_health,user_health)
    critical_chance = rand(1...101)
    if critical_chance >= 90
      critical_attack($User_Info.weapon_generator)
      enemy_health = enemy_health - $User_Info.weapon_damage
      if enemy_health < 0
        enemy_health = 0
      end
      puts ""
      puts "Critical hit! You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
      puts ""
      if enemy_health <= 0
        puts "The enemy has been defeated"
        puts ""
      end
    else
      attack($User_Info.weapon_generator)
      enemy_health = enemy_health - $User_Info.weapon_damage
      if enemy_health < 0
        enemy_health = 0
      end
      puts ""
      puts "You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
      puts ""
      if enemy_health <= 0
        puts "The enemy has been defeated"
        puts ""
      end
    end

    if enemy_health > 0
      enemy_critical_generator = rand(1...101)
      if enemy_critical_generator >= 90
        enemy_critical_attack($Enemy_Info.damage_generator)
        user_health = user_health - $Enemy_Info.enemy_damage
        if user_health < 0
          user_health = 0
        end
        puts ""
        puts "Critical hit! The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
        puts ""
        if user_health <= 0
          puts "You have been defeated"
          puts ""
        end
      else
        enemy_attack($Enemy_Info.damage_generator)
        user_health = user_health - $Enemy_Info.enemy_damage
        if user_health < 0
          user_health = 0
        end
        puts ""
        puts "The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
        puts ""
        if user_health <= 0
          puts "You have been defeated"
          puts ""
        end
      end
    end
    return enemy_health, user_health
  end
  
  def enemy_greater_speed_counter(enemy_health,user_health)
    
    enemy_critical_generator = rand(1...101)
    if enemy_critical_generator >= 90
      enemy_critical_attack_with_counter($Enemy_Info.damage_generator)
      user_health = user_health - $Enemy_Info.enemy_damage
      if user_health < 0
        user_health = 0
      end
      puts ""
      puts "Critical hit! The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
      puts ""
      if user_health <= 0
        puts "You have been defeated"
        puts ""
      end
    else
      enemy_attack_with_counter($Enemy_Info.damage_generator)
      user_health = user_health - $Enemy_Info.enemy_damage
      if user_health < 0
        user_health = 0
      end
      puts ""
      puts "The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
      puts ""
      if user_health <= 0
        puts "You have been defeated"
        puts ""
      end
    end

    if user_health > 0
      critical_chance = rand(1...101)
      if critical_chance >= 90
        critical_counter($User_Info.shield_generator)
        enemy_health = enemy_health - $User_Info.weapon_damage
        if enemy_health < 0
          enemy_health = 0
        end
        puts ""
        puts "Critical hit! You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
        puts ""
        if enemy_health <= 0
          puts "The enemy has been defeated"
          puts ""
        end
      else
        counter($User_Info.shield_generator)
        enemy_health = enemy_health - $User_Info.weapon_damage
        if enemy_health < 0
          enemy_health = 0
        end
        puts ""
        puts "You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
        puts ""
        if enemy_health <= 0
          puts "The enemy has been defeated"
          puts ""
        end
      end
    end
    
    return enemy_health, user_health
  end
  
  def enemy_less_speed_counter(enemy_health,user_health)
    critical_chance = rand(1...101)
    if critical_chance >= 90
      critical_counter($User_Info.shield_generator)
      enemy_health = enemy_health - $User_Info.weapon_damage
      if enemy_health < 0
        enemy_health = 0
      end
      puts ""
      puts "Critical hit! You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
      puts ""
      if enemy_health <= 0
        puts "The enemy has been defeated"
        puts ""
      end
    else
      counter($User_Info.shield_generator)
      enemy_health = enemy_health - $User_Info.weapon_damage
      if enemy_health < 0
        enemy_health = 0
      end
      puts ""
      puts "You have damaged the enemy for " + $User_Info.weapon_damage.to_s + " the enemy's health is now " + enemy_health.to_s
      puts ""
      if enemy_health <= 0
        puts "The enemy has been defeated"
        puts ""
      end
    end

    if enemy_health > 0
      enemy_critical_generator = rand(1...101)
      if enemy_critical_generator >= 90
        enemy_critical_attack_with_counter($Enemy_Info.damage_generator)
        user_health = user_health - $Enemy_Info.enemy_damage
        if user_health < 0
          user_health = 0
        end
        puts ""
        puts "Critical hit! The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
        puts ""
        if user_health <= 0
          puts "You have been defeated"
          puts ""
        end
      else
        enemy_attack_with_counter($Enemy_Info.damage_generator)
        user_health = user_health - $Enemy_Info.enemy_damage
        if user_health < 0
          user_health = 0
        end
        puts ""
        puts "The enemy has damaged you for " + $Enemy_Info.enemy_damage.to_s + " your health is now " + user_health.to_s
        puts ""
        if user_health <= 0
          puts "You have been defeated"
          puts ""
        end
      end
    end
    return enemy_health, user_health
  end
  
  private
  def new_game
    puts "Would you like to start a new game? (1 = yes) (2 = no)"
    restart = Integer(gets.chomp)
    puts ""
    if restart == 1
      weapon_number = get_weapon_user_input()
      weapon_name = weapon_name_generator(weapon_number)
      shield_generator = get_shield_user_input()
      shield_name = shield_name_generator(shield_generator)
      health = rand(100...200)
      your_speed = rand(1...100)
      $User_Info = User_Class.new(weapon_name, shield_name, 0, weapon_number, shield_generator, health, your_speed)
    
      damage_generator = rand(1...5)
      enemy_health = rand(100...200)
      enemy_speed = rand(1...100)
      $Enemy_Info = Enemy_Class.new(damage_generator, 0, enemy_health, enemy_speed)
      
      $Main_Game_Elements_Class.method_for_main_game()
      new_game()
      
    elsif restart == 2
      puts "goodbye!"
    else 
      puts "enter 1 or 2"
      puts ""
      new_game()
    end
  end
  
  def weapon_name_generator(weapon_generator)
    if weapon_generator == 1
      weapon_name = "Wood Sword"
    elsif weapon_generator == 2
      weapon_name = "stone Sword"
    elsif weapon_generator == 3
      weapon_name = "iron Sword"	
    else
      weapon_name = "diamond sword"
    end
    return weapon_name
  end
  
  def get_weapon_user_input
    puts "Choose your weapon (1 = wooden) (2 = stone) (3 = iron) (4 = diamond)" 
    weapon_generator = Integer(gets.chomp)
    weapon_number = 0;
    if weapon_generator > 0 || weapon_generator < 5
      weapon_number = weapon_generator
    else 
      puts "Only numbers 1, 2, 3 and 4 can be used"
      get_weapon_user_input()
    end
    puts ""
    return weapon_number
  end
	
  def shield_name_generator(shield_generator)
    if shield_generator == 1
      shield_name = "Wood shield"
    elsif shield_generator == 2
      shield_name = "stone shield"
    elsif shield_generator == 3
      shield_name = "iron shield"	
    else
      shield_name = "diamond shield"
    end
    return shield_name
  end
  
  def get_shield_user_input
    puts "Choose your shield (1 = wooden) (2 = stone) (3 = iron) (4 = diamond)" 
    weapon_generator = Integer(gets.chomp)
    shield_generator = 0
    if weapon_generator > 0 || weapon_generator < 5
      shield_generator = weapon_generator
    else 
      puts "Only numbers 1, 2, 3 and 4 can be used"
      get_weapon_user_input()
    end
    puts ""
    return shield_generator
  end
  
  def attack(weapon_generator)
    if weapon_generator == 1
      $User_Info.weapon_damage = rand(0...15)
    elsif weapon_generator == 2
      $User_Info.weapon_damage = rand(0...30)
    elsif weapon_generator == 3
      $User_Info.weapon_damage = rand(0...45)
    else
      $User_Info.weapon_damage = rand(0...60)
    end
  end
	
  def critical_attack(weapon_generator)
    if weapon_generator == 1
      $User_Info.weapon_damage = rand(15...30)
    elsif weapon_generator == 2
      $User_Info.weapon_damage = rand(30...60)
    elsif weapon_generator == 3
      $User_Info.weapon_damage = rand(60...90)
    else
      $User_Info.weapon_damage = rand(90...120)
    end
  end
	
  def enemy_attack(damage_generator)
    if damage_generator == 1
      $Enemy_Info.enemy_damage = rand(0...15)
    elsif damage_generator == 2
      $Enemy_Info.enemy_damage = rand(0...30)
    elsif damage_generator == 3
      $Enemy_Info.enemy_damage = rand(0...45)
    else
      $Enemy_Info.enemy_damage = rand(0...60)
    end
  end
	
  def enemy_critical_attack(damage_generator)
    if damage_generator == 1
      $Enemy_Info.enemy_damage = rand(0...30)
    elsif damage_generator == 2
      $Enemy_Info.enemy_damage = rand(0...60)
    elsif damage_generator == 3
      $Enemy_Info.enemy_damage = rand(0...90)
    else
      $Enemy_Info.enemy_damage = rand(0...120)
    end
  end
  
  def counter(weapon_generator)
    if weapon_generator == 1
      $User_Info.weapon_damage = rand(0...15) / 2
    elsif weapon_generator == 2
      $User_Info.weapon_damage = rand(0...30) / 2
    elsif weapon_generator == 3
      $User_Info.weapon_damage = rand(0...45) / 2
    else
      $User_Info.weapon_damage = rand(0...60) / 2
    end
  end
	
  def critical_counter(weapon_generator)
    if weapon_generator == 1
      $User_Info.weapon_damage = rand(15...30) / 2
    elsif weapon_generator == 2
      $User_Info.weapon_damage = rand(30...60) / 2
    elsif weapon_generator == 3
      $User_Info.weapon_damage = rand(60...90) / 2
    else
      $User_Info.weapon_damage = rand(90...120) / 2
    end
  end
	
  def enemy_attack_with_counter(damage_generator)
    if $User_Info.shield_generator == 1
      if damage_generator == 1
        $Enemy_Info.enemy_damage = rand(0...15) / 2
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage = rand(0...30) / 2
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage = rand(0...45) / 2
      else
        $Enemy_Info.enemy_damage = rand(0...60) / 2
      end
    elsif $User_Info.shield_generator == 2
      if damage_generator == 1
        $Enemy_Info.enemy_damage = rand(0...15) / 3
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage = rand(0...30) / 3
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage = rand(0...45) / 3
      else
        $Enemy_Info.enemy_damage = rand(0...60) / 3
      end
    elsif $User_Info.shield_generator == 3
      if damage_generator == 1
        $Enemy_Info.enemy_damage = rand(0...15) / 4
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage = rand(0...30) / 4
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage = rand(0...45) / 4
      else
        $Enemy_Info.enemy_damage = rand(0...60) / 4
      end
    elsif $User_Info.shield_generator == 4
      if damage_generator == 1
        $Enemy_Info.enemy_damage = rand(0...15) / 5
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage = rand(0...30) / 5
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage = rand(0...45) / 5
      else
        $Enemy_Info.enemy_damage = rand(0...60) / 5
      end
    end
  end
	
  def enemy_critical_attack_with_counter(damage_generator)
    if $User_Info.shield_generator == 1
      if damage_generator == 1
        $Enemy_Info.enemy_damage  = rand(0...30) / 2
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage  = rand(0...60) / 2
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage  = rand(0...90) / 2
      else
        $Enemy_Info.enemy_damage  = rand(0...120) / 2
      end
    elsif $User_Info.shield_generator == 2
      if damage_generator == 1
        $Enemy_Info.enemy_damage  = rand(0...30) / 3
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage  = rand(0...60) / 3
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage  = rand(0...90) / 3
      else
        $Enemy_Info.enemy_damage  = rand(0...120) / 3
      end
    elsif $User_Info.shield_generator == 3
      if damage_generator == 1
        $Enemy_Info.enemy_damage  = rand(0...30) / 4
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage  = rand(0...60) / 4
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage  = rand(0...90) / 4
      else
        $Enemy_Info.enemy_damage  = rand(0...120) / 4
      end
    elsif $User_Info.shield_generator == 4
      if damage_generator == 1
        $Enemy_Info.enemy_damage  = rand(0...30) / 5
      elsif damage_generator == 2
        $Enemy_Info.enemy_damage  = rand(0...60) / 5
      elsif damage_generator == 3
        $Enemy_Info.enemy_damage  = rand(0...90) / 5
      else
        $Enemy_Info.enemy_damage = rand(0...120) / 5
      end
    end
  end
    
end