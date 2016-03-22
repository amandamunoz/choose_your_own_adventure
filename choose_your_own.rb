=begin
Choose your own adventure game!

Theme: apocalyptic
=end

def changing_personalities
  if @hero_or_villain == "hero" && @good_meter == 0s
end

def good_or_evil
  puts "What is your name?"
  @name = gets.chomp
  puts "#{@name}, do you want to be the hero or the villain?"
  puts "Type V for villain or H for hero."

  user_input = gets.chomp.downcase

  if user_input == 'h'
    puts "You have chosen to be the hero."
    @good_meter = 10
    @hero_or_villain = 'hero'
    save_the_world
  elsif user_input == 'v'
    @evil_meter = 10
    @hero_or_villain = 'villain'
    puts "You have chosen to be the villain."
    destroy_the_world
  else
    puts "You will be a hero!"
  end
end


def story_setup
  @good_meter = 0
  @evil_meter = 0

  puts "There are meteors flying around. This is only the beginning. How will you survive!?"
  puts "Are you ready!? Yes, or no?"
  answer = gets.chomp.downcase

  if answer == "yes"
    good_or_evil
  elsif answer == 'no'
    puts "Go do your homework!"
  else
    puts "Invalid response :("
  end
end
