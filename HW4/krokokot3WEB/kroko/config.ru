require './app/pet1'

use Rack::Reloader, 0
use Rack::Static, :urls => ["/public"]
use Rack::Auth::Basic do |username, password|
  username == 'admin'
  password == 'qwerty'
end
run Pet
