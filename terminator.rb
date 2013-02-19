require "./terminatorable"


class GoodTerminator
  include Terminatorable

  likes_to_protect [:john_connor, :sarah_connor]
  likes_to_destroy []

  def protects?(person)
    [:john_connor, :sarah_connor].include?(person)
  end
end



class BadTerminator
  include Terminatorable

  likes_to_protect []
  likes_to_destroy [:john_connor, :sarah_connor]

  def protects?(person)
    [].include?(person)
  end
end
