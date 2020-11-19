class Pet # class of home pet
  attr_accessor :name, :health, :play, :sleep, :eat, :agress, :smile, :transfer

  def initialize(name)
    @name = name
    @health = 100
    @play = 100
    @sleep = 100
    @eat = 100
    @agress = 0
    @need_toilet = false
    @transfer = []    
    @smile = '&#128525;'
  end

  def treatment
    if @health < 100
      @health = 100
      puts 'Krokokot treating!'
      puts 'I am feel better!'
      puts '-------------------'
      @transfer << 'Krokokot treating! I am feel better!'
      @smile = '&#128548;'
    else
      puts 'I am not ill!'
      puts '-------------------'
      @transfer << 'I am not ill!'
      @smile = '&#128567;'
      @agress += rand(20)
    end
    @play -= rand(20)
    @sleep -= rand(20)
    @eat -= rand(20)
    passage_of_time
  end

  def playing
    if @agress > 30
      puts 'Krokokot bit you! Give him some food!'
      puts '-------------------'
      @transfer << 'Krokokot bit you! Give him some food!'
      @smile = '&#128544;'
    else
      @play = 100
      print 'Krokokot playing!'
      puts '-------------------'
      @transfer << 'Krokokot playing!'
      @smile = '&#128525;'
    end
    @health -= rand(20)
    @sleep -= rand(20)
    @eat -= rand(20)
    passage_of_time
  end
 
  def sleeping
    if @sleep < 90
      @sleep = 100
      puts 'Krokokot sleeping! zzzzzzz..zzz'
      puts '-------------------'
      @transfer << 'Krokokot sleeping! zzzzzzz..zzz'
      @smile = '&#128555;'
    else
      puts 'I do not want to sleep. Play with me!'
      puts '-------------------'
      @transfer << 'I do not want to sleep. Play with me!'
      @smile = '&#128555;'
    end
    @health -= rand(20)
    @play -= rand(20)
    @eat -= rand(20)
    @agress -= rand(20)
    passage_of_time
  end

  def feed
    if @eat < 100
      puts 'nam nam nam!!!'
      puts 'Krokokot eating!'
      puts '-------------------'
      @transfer << 'Krokokot eating! nam nam nam!!!'
      @smile = '&#128523;'
      @eat = 100
      @agress -= rand(20)
    else
      puts 'Krokokot turned away and wagged his tail'
      puts '-------------------'
      @transfer << 'Krokokot turned away and wagged his tail'
      @smile = '&#128532;'
      @agress += rand(20)
      @need_toilet = true
    end
    @health -= rand(20)
    @play -= rand(20)
    @sleep -= rand(20)
    passage_of_time
  end

  def toilet
    if @need_toilet
      puts 'I have done it'
      puts '-------------------'
      @transfer << 'I have done it'
      @smile = '&#128566;'
      @agress -= rand(20)
      @need_toilet = false
    else
      puts 'I do not want to do this'
      puts '-------------------'
      @transfer << 'I do not want to do this'
      @smile = '&#128547;'
      @agress += rand(20)
    end
    passage_of_time
  end

  def is_dead?
    @health <= 0 || @sleep <= 0 || @play <= 0 || @eat <= 0
  end

  def is_owner_dead?
    @agress > 30
  end

  def cause_of_dead
    if @health <= 0
      @health = 0
      puts "Krokokot #{@name}. Cause of death: disease !!! Game over!"
      @transfer << "Krokokot #{@name}. Cause of death: disease !!! Game over!"
      @smile = '&#128591;'
    elsif @eat <= 0
      @eat = 0
      puts "Krokokot #{@name}. Cause of death: hunger!!! Game over!"
      @transfer << "Krokokot #{@name}. Cause of death: hunger!!! Game over!"
      @smile = '&#128591;'
    elsif @sleep <= 0
      @sleep = 0
      puts "Krokokot #{@name}. Cause of death: insomnia!!! Game over!"
      @transfer << "Krokokot #{@name}. Cause of death: insomnia!!! Game over!"
      @smile = '&#128591;'
    elsif @play <= 0
      @play = 0
      puts "Krokokot #{@name}. Cause of death: boredom!!! Game over!"
      @transfer << "Krokokot #{@name}. Cause of death: boredom!!! Game over!"
      @smile = '&#128591;'
    end
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
  
  def toiletty?
    @need_toilet == true
  end

  def passage_of_time
    p 'some hours later'
    puts('I`m so  hungry!') if hungry?
    puts('I`m so boring!') if boring?
    puts('I`m feel bad!') if healthy?
    puts('I need to sleep!') if sleepy?
    puts('I may kill you!') if agressive?
    puts('Pss, where is a toilet here?') if toiletty?
    puts '------------------------------------------------'
    @transfer << 'I`m so  hungry!' if hungry?
    @transfer << 'I`m so boring!' if boring?
    @transfer << 'I`m feel bad!' if healthy?
    @transfer << 'I need to sleep!' if sleepy?
    @transfer << 'I may kill you!' if agressive?
    @transfer << 'Pss, where is a toilet here?' if toiletty?
    @transfer.each{ |r| puts Array(r).join}
  end
end
