require "./terminatorable"


class GoodTerminator
  include Terminatorable
  likes_to_protect [:john_connor, :sarah_connor]

  def protects?(person)
    [:john_connor, :sarah_connor].include?(person)
  end
end

class BadTerminator
  include Terminatorable
  likes_to_protect [:john_connor, :sarah_connor]
end
