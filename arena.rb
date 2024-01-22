class Arena
  # 3. add a reader for both player and enemy
 # enter code here
 attr_reader :player, :enemy

 def initialize(player:, enemy:)
    # 2. Create an instance variable for player and enemy
   # enter code here
   @player = player
   @enemy = enemy
 end

 def start
   puts "Welcome to the Arena!"
   puts "You are fighting #{enemy.name}!"
   while player.hp > 0 && enemy.hp > 0
      # 4. Implement actions where Player and Enemey will both fight. Player and Enemy will do a random action.
     # ACTIONS are: attack and use_potion
     # enter code here
     player_action
     enemy_action

     puts "Your health: #{player.hp}"
     puts "#{enemy.name}'s health: #{enemy.hp}"
   end

   if player.hp > 0
     puts "You win!"
   else
     puts "You lose!"
   end
 end

 private

 def attack(attacker, target)
   damage = attacker.atk - target.def.to_i
   target.hp -= damage

   puts "#{attacker.name} attacks #{target.name} for #{damage} damage!"
 end

 def player_action
   puts "Choose action (1: Attack, 2: Use Potion):"
   action = gets.chomp.to_i

   case action
   when 1
     attack(player, enemy)
   when 2
     player.use_potion
   else
     puts "Invalid action. Try again."
     player_action
   end
 end

 def enemy_action
   actions = [:attack, :use_potion]
   random_action = actions.sample

   case random_action
   when :attack
     attack(enemy, player)
   when :use_potion
     enemy.use_potion
   end
 end

 # 5.Challenge: Create a method where player can defend
   # Specs: Defending can make the defender's defense x1.5 in 1 turn
end
