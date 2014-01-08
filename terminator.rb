require "./terminatorable"

class Terminator
  include Terminatorable
  likes_to_protect [:john_connor, :sarah_connor]
   good

  def protect?(name)
    current_mission == "protect: #{name}"
  end

end
#class GoodTerminator
#  likes_to_protect [:john_connor, :sarah_connor]
#  likes_to_destroy []
#end

#class BadTerminator
#  likes_to_protect []
#  likes_to_destroy [:john_connor, :sarah_connor]
#end


