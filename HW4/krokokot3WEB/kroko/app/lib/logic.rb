module Logic
  def self.change_params(request, name)

    Rack::Response.new do |response|

      if "#{name}" == 'health'
        if request.cookies["health"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
          response.set_cookie('speak', 'I am not ill!')
        else
          response.set_cookie('health', 100)
          response.set_cookie('speak', 'I am feel better!')
        end

        response.set_cookie('play', request.cookies['play'].to_i - rand(20) )
        response.set_cookie('sleep', request.cookies['sleep'].to_i - rand(20) ) 
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
      end

      if "#{name}" == 'play'
        if request.cookies["play"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
          response.set_cookie('speak', 'Krokokot bit you! Give him some food!')
        else
          response.set_cookie('play', 100)
          response.set_cookie('agress', request.cookies["agress"].to_i - rand(20) )
          response.set_cookie('speak', 'Krokokot playing!')
        end

        response.set_cookie('health', request.cookies['health'].to_i - rand(20) )
        response.set_cookie('sleep', request.cookies['sleep'].to_i - rand(20) ) 
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
      end

      if "#{name}" == 'sleep'
        if request.cookies["sleep"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
          response.set_cookie('speak', 'I do not want to sleep. Play with me!')
        else
          response.set_cookie('sleep', 100)
          response.set_cookie('agress', 0)
          response.set_cookie('speak', 'Krokokot sleeping! zzzzzzz..zzz')
        end

        response.set_cookie('health', request.cookies['health'].to_i - rand(20) )
        response.set_cookie('play', request.cookies['play'].to_i - rand(20) ) 
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
      end

      if "#{name}" == 'eat'
        if request.cookies["eat"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
          response.set_cookie('speak', 'Krokokot turned away and wagged his tail')
        else
          response.set_cookie('eat', 100)
          response.set_cookie('agress', request.cookies["agress"].to_i - rand(20) )
          response.set_cookie('speak', 'nam nam nam!!! Krokokot eating!')
        end

        response.set_cookie('health', request.cookies['health'].to_i - rand(20) )
        response.set_cookie('play', request.cookies['play'].to_i - rand(20) ) 
        response.set_cookie('sleep', request.cookies['sleep'].to_i - rand(20) )
        
      end

      if "#{name}" == 'spent'
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
        response.set_cookie('health', request.cookies['health'].to_i - rand(20) )
        response.set_cookie('play', request.cookies['play'].to_i - rand(20) ) 
        response.set_cookie('sleep', request.cookies['sleep'].to_i - rand(20) )
        response.set_cookie('speak', 'some hours ago...')
        
      end
      response.redirect('/start')
    end
   
  end
  
  
end
