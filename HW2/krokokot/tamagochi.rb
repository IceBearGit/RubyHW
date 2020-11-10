class Pet
  attr_accessor :name, :health, :play, :sleep, :eat, :mood, :agress

  def initialize (name)
    @name = name
    @health = 100  
    @play = 100
    @sleep = 100 
    @eat = 100
    @mood = 100
    @agress = 0
    @need_toilet = false
  end

  def treating
    if (@health < 100)
      @health = 100
      puts "Krokokot treating!"
      puts 'I am feel better!'
      puts "-------------------"
    else
      puts 'I am not ill!'
      puts "-------------------"
    end
    @play -= rand(20)
    @sleep -= rand(20) 
    @eat -= rand(20)
    @mood -= rand(20)
    @agress += rand(20)
    passageOfTime
  end

  def playing
    if (@agress > 30)
      puts "Krokokot bit you! Give him some food!"
      puts "-------------------"
    else
      @play = 100
      print "Krokokot playing!"
      puts "-------------------"
    end
    @health -= rand(20) 
    @sleep -= rand(20) 
    @eat -= rand(20)
    @mood -= rand(20)
    @agress += rand(20)
    passageOfTime
  end
 
 def sleeping
    if (@sleep < 90)
      @sleep = 100
      puts "Krokokot sleeping! zzzzzzz..zzz"
      puts "-------------------"
    else
      puts 'I do not want to sleep. Play with me!'
      puts "-------------------"
    end
    @health -= rand(20) 
    @play -= rand(20)
    @eat -= rand(20)
    @mood -= rand(20)
    @agress += rand(20)
    passageOfTime
  end

  def feed
    if (@eat < 100)
      puts 'nam nam nam!!!'
      puts "Krokokot eating!"
      puts "-------------------"
      @eat = 100
    else
      puts 'Krokokot turned away and wagged his tail'
      puts "-------------------"
      @need_toilet = true
    end
    @health -= rand(20) 
    @play -= rand(20)
    @sleep -= rand(20) 
    @mood -= rand(20)
    @agress += rand(20)
    passageOfTime
  end

  def toilet
    if @need_toilet
      puts 'I have done it'
      puts "-------------------"
    else
      puts 'I do not want to do this'
      puts "-------------------"
    end
    @need_toilet = false
    passageOfTime
  end

  def status_bar
    puts "\nHealth\t#{@pet.health}\nEat\t\t#{@pet.eat}\nSleep\t#{@pet.sleep}\nPlay\t\t#{@pet.play}\nMood\t\t#{@pet.mood}\nAgress\t\t#{@pet.agress}"
  end

  def is_dead?
    @health == 0 || @sleep == 0 || @play == 0 || @eat == 0
  end
  
  private
  
  def hungry?
    @eat <= 20
  end
  
  def boring?
    @play <= 20
  end

  def healthy?
    @health <= 20
  end

  def sleepy?
    @sleep <= 20
  end
  
  def passageOfTime
    p "some hours later"
    puts('I`m so  hungry!') if hungry?
    puts('I`m so boring!') if boring?
    puts('I`m feel bad!') if healthy?
    puts('I need to sleep!') if sleepy?
    # dead  
  end

  def dead
    if pet.health <= 0
      pet.health = 0
      print "Krokokot #{pet.name}. Cause of death: disease !!! Game over!"
    elsif pet.eat <= 0
      pet.eat = 0
      print "Krokokot #{pet.name}. Cause of death: hunger!!! Game over!"
    elsif pet.sleep <= 0
      pet.sleep = 0
      print "Krokokot #{pet.name}. Cause of death: insomnia!!! Game over!"
    elsif pet.play <= 0
      pet.play = 0
      print "Krokokot #{pet.name}. Cause of death: boredom!!! Game over!"
    end
  end

  
  
end
