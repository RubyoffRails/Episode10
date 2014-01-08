require "./terminatorable"

class Terminator

  include Terminatorable
  good

  def protect?(name)
    current_mission == "protect: #{name}"
  end

end

    class GoodTerminator < Terminator
      likes_to_protect [{protect: [:john_connor, :sarah_connor] , destroy: [:john_connor, :sarah_connor]}]
      likes_to_destroy [{protect: [:john_connor, :sarah_connor] , destroy: [:john_connor, :sarah_connor]}]
    end

    class BadTerminator < Terminator
      likes_to_protect [{protect: [:john_connor, :sarah_connor] , destroy: [:john_connor, :sarah_connor]}]
      likes_to_destroy [{protect: [:john_connor, :sarah_connor] , destroy: [:john_connor, :sarah_connor]}]
    end



