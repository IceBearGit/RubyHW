module FortyTwo
  def fourty_two?
    self == 42
  end
end

# add extended methods
class Integer; include FortyTwo; end