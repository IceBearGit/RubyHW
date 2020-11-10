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
      @agress += rand(20)
    end
    @play -= rand(20)
    @sleep -= rand(20) 
    @eat -= rand(20)
    @mood -= rand(20)
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
    @agress -= rand(20)
    passageOfTime
  end

  def feed
    if (@eat < 100)
      puts 'nam nam nam!!!'
      puts "Krokokot eating!"
      puts "-------------------"
      @eat = 100
      @agress -= rand(20)
    else
      puts 'Krokokot turned away and wagged his tail'
      puts "-------------------"
      @agress += rand(20)
      @need_toilet = true
    end
    @health -= rand(20) 
    @play -= rand(20)
    @sleep -= rand(20) 
    @mood -= rand(20)
    passageOfTime
  end

  def toilet
    if @need_toilet
      puts 'I have done it'
      puts "-------------------"
      @agress -= rand(20)
    else
      puts 'I do not want to do this'
      puts "-------------------"
      @agress += rand(20)
    end
    @need_toilet = false
    passageOfTime
  end

  def is_dead?
    @health <= 0 || @sleep <= 0 || @play <= 0 || @eat <= 0
  end

  def is_owner_dead?
    @agress > 50
  end
  
  private
  
  def hungry?
    @eat <= 30
  end
  
  def boring?
    @play <= 30
  end

  def healthy?
    @health <= 30
  end

  def sleepy?
    @sleep <= 30
  end

  def agressive?
    @agress >= 30
  end
  
  def passageOfTime
    p "some hours later"
    puts('I`m so  hungry!') if hungry?
    puts('I`m so boring!') if boring?
    puts('I`m feel bad!') if healthy?
    puts('I need to sleep!') if sleepy?
    puts('I may kill you!') if agressive?
    puts('Pss, where is a toilet here?') if toilet?
  end  
end
