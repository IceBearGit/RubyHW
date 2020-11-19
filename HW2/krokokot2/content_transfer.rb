# require 'cgi'
class Content_trans
  def initialize(pet)
    @pet = pet

  end

  def create_page (file_name = 'index')
    file = File.new("#{file_name}.html", 'w:UTF-8')
    file.print("<!DOCTYPE html>\n\r")
    file.print("<html lang='en'>\n\r")
    file.print("<head>\n\r")
    file.print("<meta charset='utf-8'>\n\r")
    file.print("<title>title</title>\n\r")
    file.print("<link rel='stylesheet' href='style.css'>\n\r")
    file.print("<script src='script.js'></script>\n\r")
    file.print("<script>setInterval(()=>{window.location.reload()}, 5000)</script>\n\r")
    file.print("</head>\n\r")
    file.print("<body>\n\r")
    file.print("<h1> Hi, i am krokokot </h1>\n\r")
    file.print("<div>\n\r")
    file.print("<p>My name is {{name}}</p>\n\r")
    file.print("<p>Health level: {{health}}</p>\n\r")
    file.print("<p>Hungry level: {{eat}}</p>\n\r")
    file.print("<p>Sleep level: {{sleep}}</p>\n\r")
    file.print("<p>Play level: {{play}}</p>\n\r")
    file.print("<p>Agress level: {{agressive}}</p>\n\r")
    file.print("<p>{{transfer}}</p>\n\r")
    file.print("<p>{{smile}}</p>\n\r")
    file.print("</div>\n\r")
    file.print("</body>\n\r")
    file.print("</html>\n\r")
    file.close
  end

  def content_transfer
    content = File.read("index.html")
    html_new = "index_new.html"
    File.open(html_new, 'w') {|f|
      content.gsub!('{{name}}', @pet.name)
      content.gsub!('{{health}}', @pet.health.to_s)
      content.gsub!('{{eat}}', @pet.eat.to_s)
      content.gsub!('{{sleep}}', @pet.sleep.to_s)
      content.gsub!('{{play}}', @pet.play.to_s)
      content.gsub!('{{agressive}}', @pet.agress.to_s)
      content.gsub!('{{transfer}}', @pet.transfer.join('<br>'))
      content.gsub!('{{smile}}', @pet.smile) 
      f.puts content}
  end

end

# bypass_html ? (revision = input_string) : (revision = CGI::escapeHTML(input_string))
 #   file.print("#{revision}\n\r")
