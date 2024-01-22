class Player
  MAX_POTIONS_QTY = 5.freeze
  POTION_HEAL_AMOUNT = 15

  attr_accessor :name, :potions, :hp
  attr_reader :atk, :def

  def initialize(name)
    @name = name
    @hp = 100
    @atk = 20
    @potions = MAX_POTIONS_QTY
    @def_bonus = 1.0
  end

  # 1. Create a method where the player can heal using potions and reduce the player's potion amount
  # Specs: Using a potion can heal 15 hp
  def use_potion
    # Prevent using potions when no more potions left. Use guard clause here.
    return puts "#{name} has no left potion" if potions <= 0

    @hp += POTION_HEAL_AMOUNT
    @hp = [@hp, 100].min

    @potions -= 1

    puts "#{name} used a potion."
    puts "#{POTION_HEAL_AMOUNT} HP healed."
    puts "Remaining potions: #{potions}. Current HP: #{hp}."
  end
end

# player = Player.new("Victor")

# puts "#{player.name} stat"
# puts "HP: #{player.hp}"
# puts "Potions: #{player.potions}"

# player.use_potion

# puts "\n#{player.name} stat after using the potion:"
# puts "HP: #{player.hp}"
# puts "Potions: #{player.potions}"


