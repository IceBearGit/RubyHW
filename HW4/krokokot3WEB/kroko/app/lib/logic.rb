module Logic
  def self.change_params(request, name)

    Rack::Response.new do |response|

      if "#{name}" == 'health'
        if request.cookies["health"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
        else
          response.set_cookie('health', 100)
        end

        response.set_cookie('play', request.cookies['play'].to_i - rand(20) )
        response.set_cookie('sleep', request.cookies['sleep'].to_i - rand(20) ) 
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
      end

      if "#{name}" == 'play'
        if request.cookies["play"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
        else
          response.set_cookie('play', 100)
          response.set_cookie('agress', request.cookies["agress"].to_i - rand(20) )
        end

        response.set_cookie('health', request.cookies['health'].to_i - rand(20) )
        response.set_cookie('sleep', request.cookies['sleep'].to_i - rand(20) ) 
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
      end

      if "#{name}" == 'sleep'
        if request.cookies["sleep"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
        else
          response.set_cookie('sleep', 100)
          response.set_cookie('agress', 0)
        end

        response.set_cookie('health', request.cookies['health'].to_i - rand(20) )
        response.set_cookie('play', request.cookies['play'].to_i - rand(20) ) 
        response.set_cookie('eat', request.cookies['eat'].to_i - rand(20) )
      end

      if "#{name}" == 'eat'
        if request.cookies["eat"].to_i == 100
          response.set_cookie('agress', request.cookies["agress"].to_i + rand(20) )
        else
          response.set_cookie('eat', 100)
          response.set_cookie('agress', request.cookies["agress"].to_i - rand(20) )
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
        
      end
      response.redirect('/start')
    end
   
  end
  
  
end
