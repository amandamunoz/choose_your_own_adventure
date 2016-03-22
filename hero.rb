def save_the_world
  puts "What's the villain's name?"
  @villain_name = gets.chomp
  puts "You used to work with #{@villain_name}. Nobody liked you, because of your sarcasm, but that's okay. You're actually pretty nice.\n
  You never expected #{@villain_name} to be evil."
  puts "Do you go to the library to do research, or do you go out to fight crime?"
  puts ["a: go to library", "b: go and fight crime"]
  action = gets.chomp
  case action
  when "a"
    puts "'Duh, I'm going to the library,' you think"
    puts "You're going to the library."
    go_to_library
  when "b"
    puts "You find a crime"
  else
  end
end

def go_to_library
  puts "You do some research on #{@villain_name}"
  puts "You find an old newspaper clipping. #{@villain_name} is in it!"

end
