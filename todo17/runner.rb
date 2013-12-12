require_relative './jukebox'
require_relative './song_library'

def run
  puts "Welcome to Ruby Console Jukebox!"
  prompt
end

def prompt
  puts
  puts "Enter a command to continue. Type 'help' for a list of commands."
  command = gets.chomp
  while command.downcase != "exit" do
    run_command(command)
    prompt
  end
end

def get_command
  gets.strip
end

def run_command(command)
  case command
  when "help"
    show_help
  else
    jukebox(command)
  end
end

def show_help
  puts("Never worked a jukebox, eh? Pretty standard. Available commands are:")
  puts("'help' - shows this menu")
  puts("'list' - lists the whole song library")
  puts("or you can enter an artist's name to show that artist's songs")
  puts("or you can enter a song title to play that song!")
end

run
