class Main_Game_Elements_Class
  
  def method_for_main_game
    
    puts "You've encountered an Enemy with " + $Enemy_Info.health.to_s + " hit points"
    puts "You currently have " + $User_Info.health.to_s + " hit points \nYour weapon is a " + $User_Info.weapon_name.to_s + " and your shield is a " + $User_Info.shield_name.to_s
    puts "your speed is " + $User_Info.speed.to_s + "\n" + "the enemy's speed is " + $Enemy_Info.speed.to_s
    puts ""

    run_chance = false 
    
    until $Enemy_Info.health <= 0 || $User_Info.health <= 0
      
      puts ""
      puts "What do you want to do? (1 = attack) (2 = counter) (3 = run(chance of failure))"
      user_Command = Integer(gets.chomp)
      
      if user_Command == 3
        run_chance, $User_Info.health = $Basic_Game_Elements_Class.run_command_activated($User_Info.health)
        if $User_Info.health <= 0
          break
        end
        if run_chance == true
          break
        end
      elsif user_Command == 1
        if $Enemy_Info.speed > $User_Info.speed 
          $Enemy_Info.health, $User_Info.health = $Basic_Game_Elements_Class.enemy_greater_speed($Enemy_Info.health, $User_Info.health)
        else
          $Enemy_Info.health, $User_Info.health = $Basic_Game_Elements_Class.enemy_less_speed($Enemy_Info.health, $User_Info.health)
        end
      elsif user_Command == 2
        if $Enemy_Info.speed > $User_Info.speed 
          $Enemy_Info.health, $User_Info.health = $Basic_Game_Elements_Class.enemy_greater_speed_counter($Enemy_Info.health, $User_Info.health)
        else
          $Enemy_Info.health, $User_Info.health = $Basic_Game_Elements_Class.enemy_less_speed_counter($Enemy_Info.health, $User_Info.health)
        end
      else
        puts ""
        puts "You can only use numbers 1, 2 and 3"
      end
    end
  
  end
  
end