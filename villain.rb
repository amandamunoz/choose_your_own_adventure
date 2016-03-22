def meet_hero
  # @hero_name = 'amanda'
  # @method_of_destruction = 'pudding'
  puts "The hero, #{@hero_name}, is trying to stop you!"
  puts "What do you do in the face of heroism? Do you: "
  puts ["a: attack", "b: sneakily follow them", "c: hide"]
  action = gets.chomp
  case action
  when "a"
    if @method_of_destruction == 'ice'
      precedent = "an"
    else
      precedent = "a"
    end
    @evil_meter = @evil_meter + 1
    @good_meter = @good_meter - 1
    puts "You attack the hero with #{precedent} #{@method_of_destruction} cannon."
  when "b"
    puts "You follow #{@hero_name} into the library."
  when "c"
    @good_meter = @good_meter + 1
    @evil_meter = @evil_meter - 1
    puts "You hid in the bushes. But through the bushes, you see a crime and #{@hero_name} doesn't stop it!"
  else
    puts "You didn't select an action =/"
  end
end

def destroy_the_world
  puts "What's the hero's name?"
  @hero_name = gets.chomp
  puts "You are the evil meteorologist. Everyone thought you were very nice, but you FOOLED them!"
  puts "How do you want to destroy the world? With ice, or desserts?"
  @method_of_destruction = gets.chomp.downcase
  puts "You have chosen #{@method_of_destruction}."
  meet_hero
end
