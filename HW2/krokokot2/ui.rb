require_relative 'tamagochi' # operated menu for pet
require 'content_transfer'
require 'yaml'

# class Ui creates an interface for game
class Ui
  DATABASE = [
    { name: '',
      pass: '',
      role: 'guest' },
    { name: 'admin',
      pass: '5555',
      role: 'admin' },
    { name: 'superadmin',
      pass: '12345',
      role: 'superadmin' }
    ]

  def start
    init_pet
    autorization
    puts '------------------------------------------------'
    puts('Just born your krokokot ' + @pet.name)
    puts '------------------------------------------------'
    puts "\nHealth\t\t#{@pet.health}\nEat\t\t#{@pet.eat}\nSleep\t\t#{@pet.sleep}\nPlay\t\t#{@pet.play}"
    puts ''
    puts '------------------------------------------------'
    puts 'Krokokot say: '
    puts "Hi, my name is #{@pet.name}"
    puts 'I am krokokot and your best friend. But if you do not give me a food and play with me, i will eat you :)'
    puts '------------------------------------------------'
    puts ''
    puts '-------------------'
    print 'Give the name to your file: '
    file_name = gets.chomp.to_s

    while true
      if @pet.is_dead?
        @pet.cause_of_dead
        break
      elsif @pet.is_owner_dead?
        puts 'Your krokokot killed you. R.I.P.'
        @pet.transfer = 'Your krokokot killed you. R.I.P.'
        @smile = '&#128591;'
        break
      end
      input_string = "
<header>
  <span>#{@pet.name}</span>
</header>
<main>
  <section>
    <ul>
      <li>Health: <strong>#{@pet.health}</strong></li>
      <li>Eat: <strong>#{@pet.eat}</strong></li>
      <li>Sleep: <strong>#{@pet.sleep}%</strong></li>
      <li>Play: <strong>#{@pet.play}%</strong></li>
      <li>Agressive: <strong>#{@pet.agress}%</strong></li>
    </ul>
  </section>

  <article>
    <div>
      <p>What happened:</p>
      <p>#{@pet.author}</p>
    </div>
    <div>
      <p>Pet speak:</p>
      <p>#{@pet.speak}</p>
    </div>
  </article>
  <aside>
    <p>#{@pet.smile}</p>
  </aside>
</main>
<footer>
  <p>List of available commands:</p>
  <section>
    <ul>
      <li>1 - Visit a doctor</li>
      <li>2 - Give some food</li>
      <li>3 - Send to sleep</li>
      <li>4 - Play with him</li>
      <li>5 - Toilet for krokokot</li>
      <li>6 - Exit</li>
    </ul>
  </section>
  <p>Press enter to spent some hours without kroko...
  "
    content_transfer(input_string, file_name, true)
      action = ask_menu
        case action
        when '1'
          puts 'Selected - 1 '
          puts '-------------------'
          @pet.treatment

        when '2'
          puts 'Selected - 2 '
          puts '-------------------'
          @pet.feed

        when '3'
          puts 'Selected - 3 '
          puts '-------------------'
          @pet.sleeping

        when '4'
          puts 'Selected - 4 '
          puts '-------------------'
          @pet.playing

        when '5'
          puts 'Selected - 5 '
          puts '-------------------'
          @pet.toilet

        when '6'
          puts 'Exit programm'
          break

        when 'chname'
          puts "You entered 'chname' "
          puts '-------------------'
          @pet.change_name

        when 'kill'
          puts "You entered 'kill'"
          puts '-------------------'
          @pet.superadmin('kill')

        when 'reset'
          puts "You entered 'reset'"
          puts '-------------------'
          @pet.superadmin('reset')

        when 'change'
          puts "You entered 'change'"
          puts '-------------------'
          @pet.superadmin('change')

        when ''
          puts 'Some hours ago!'
          puts '-------------------'
          @pet.health -= rand(20)
          @pet.eat -= rand(20)
          @pet.sleep -= rand(20)
          @pet.play -= rand(20)
        else
          puts "Вы ввели #{action}, что-то не так!"
          puts 'Try again!'
          puts '-------------------'
        end
    end
  end

  def init_pet
    print 'First of all, you must give your pet a name: '
    name = gets.chomp.to_s
    @pet = Pet.new(name)
  end

  def ask_menu
    status_bar

      print '-------------------'
      puts "\nWhat do you do with #{@pet.name}:
      1 - Visit a doctor
      2 - Give some food
      3 - Send to sleep
      4 - Play with him
      5 - Toilet for krokokot
      6 - Exit
      -----------------------------------------
      Function for admin:
      'chname' - Change name of Krokokot
      -----------------------------------------
      Function for superadmin:
      'chname' - Change name of Krokokot
      'kill' - Kill the pet
      'change' - Change values
      'reset' - Back to default values
      Press enter to spent some hours without kroko..."
      puts '------------------------------------------------'
      action = gets.chomp.to_s
  end

  def status_bar
    puts 'Status'
    puts '------------------------------------------------'
    puts "\nHealth\t\t#{@pet.health}\nEat\t\t#{@pet.eat}\nSleep\t\t#{@pet.sleep}\nPlay\t\t#{@pet.play}\nAgressive\t#{@pet.agress}"
  end

  def autorization
    authorization = ''
    until authorization == 'exit' || @pet.guest_role != ''
      puts 'Please enter your username and password to start'
      puts 'Enter your name:'
      login_name = gets.chomp
      exit if login_name == 'exit'
      puts 'Enter your password:'
      login_pass = gets.chomp

      user = DATABASE.find { |f| f[:name] == login_name && f[:pass] == login_pass }
      if user.nil?
        puts "Wrong name or password. Input correct data or enter 'exit' to leave program"
      else
        @pet.guest_role = user[:role]
        save_data = { title: 'tamagochi',
                      characteristics: [
                        { health: @pet.health,
                          play: @pet.play,
                          sleep: @pet.sleep,
                          eat: @pet.eat,
                          agress: @pet.agress }],
                      user: user }

        File.open('user.yml', 'w') { |file| file.write(save_data.to_yaml) }
        puts "You logged in as #{@pet.guest_role}"
      end
    end
  end
end
Ui.new.start
