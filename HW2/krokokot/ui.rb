require_relative 'tamagochi'

class Ui
  def start
    init_pet
    
    puts "------------------------------------------------"
    puts ("Just born your krokokot " + @pet.name)
    puts "------------------------------------------------"
    puts "\nHealth\t\t#{@pet.health}\nEat\t\t#{@pet.eat}\nFatigue\t\t#{@pet.sleep}\nPlay\t\t#{@pet.play}"
    puts ""
    puts "------------------------------------------------"
    puts "Krokokot say: "
    puts "Hi, my name is #{@name}"
    puts 'I am krokokot and your best friend. But if you do not give me a food and play with me, i will eat you :)'
    puts "------------------------------------------------"
    puts ""
    puts "-------------------"
    while true
      if @pet.is_dead?
        @dead
        break
      end

      action = ask_menu
        case action
        when "1"
          puts "Selected - 1 "
          puts "-------------------"
          @pet.treating
        when "2"
          puts "Selected - 2 "
          puts "-------------------"
          @pet.feed
        when "3"
          puts "Selected - 3 "
          puts "-------------------"
          @pet.sleeping
        when "4"
          puts "Selected - 4 "
          puts "-------------------"
          @pet.play  
        when "5"
          puts "Exit programm"
          break
        when ""
          print "You do not selected anything!"
          puts "-------------------"
          @pet.health -= rand(20)
          @pet.eat -= rand(20)
          @pet.sleep -= rand(20)
          @pet.play -= rand(20)
        else
          puts "Вы ввели #{action}, что-то не так!"
          puts "Try again!"
          puts "-------------------"
        end
      end
  end
  
  def init_pet
    print 'First of all, you must give your pet a name: '
    name = gets.chomp().to_s
    @pet = Pet.new(name)
  end
  
  def ask_menu
    puts "\nHealth\t\t#{@pet.health}\nEat\t\t#{@pet.eat}\nFatigue\t\t#{@pet.sleep}\nPlay\t\t#{@pet.play}"
    print "-------------------"
      puts "\nWhat do you do with #{@pet.name}:
      1 - Visit a doctor
      2 - Give some food
      3 - Send to sleep
      4 - Play with him
      5 - Exit 
      Press enter if to do nothing..."
      puts "------------------------------------------------"
      action = gets.chomp().to_s
  end
end

Ui.new.start