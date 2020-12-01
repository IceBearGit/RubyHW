require "erb"
require './app/lib/logic'

class Pet
  include Logic

  def self.call(env)
    new(env).response.finish
  end

  def initialize(env)
    @request    = Rack::Request.new(env)
    @health = 100
    @play   = 100
    @sleep  = 100
    @eat  = 100
    @agress  = 0
    @need_toilet = false
  end

  def response
    case @request.path
    when '/'
      Rack::Response.new(render("form.html.erb"))

    when '/initialize'
      Rack::Response.new do |response|
        response.set_cookie('health', @health)
        response.set_cookie('play', @play)
        response.set_cookie('sleep', @sleep)
        response.set_cookie('eat', @eat)
        response.set_cookie('agress', @agress)
        response.set_cookie('name', @request.params['name'])
        response.redirect('/greeting')
      end

    when '/exit'
      Rack::Response.new('Game Over', 404)
      Rack::Response.new(render("game_over.html.erb"))

    when '/greeting'
      Rack::Response.new(render("greeting.html.erb"))

    when '/start'
      if get("health") <=0 || get("play") <= 0 || get("sleep") <= 0 || get("eat") <= 0
        Rack::Response.new('Game Over', 404)
        Rack::Response.new(render("game_over.html.erb"))
      elsif get("agress") >= 40
        Rack::Response.new('Game Over', 404)
        Rack::Response.new(render("ex_game_over.html.erb"))
      else
        Rack::Response.new(render("index.html.erb"))
      end

    when '/change'
      return Logic.change_params(@request, 'health') if @request.params['health']
      return Logic.change_params(@request, 'play')   if @request.params['play']
      return Logic.change_params(@request, 'sleep')  if @request.params['sleep']
      return Logic.change_params(@request, 'eat')  if @request.params['eat']
      return Logic.change_params(@request, 'spent')  if @request.params['spent']
    else
      Rack::Response.new('Not Found', 404)
    end
  end

  def render(template) #takes templates from views
    path = File.expand_path("../screens/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end

  def name
    name = @request.cookies['name'].delete(' ')
    name.empty? ? 'Pet' : @request.cookies['name'].capitalize
  end

  def get(attr)
    @request.cookies["#{attr}"].to_i
  end

end