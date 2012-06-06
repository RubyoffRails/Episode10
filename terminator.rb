require "./terminatorable"

class TerminatorGood
  include Terminatorable
  likes_to_protect [:john_connor, :sarah_connor]
end
class TerminatorBad
  include Terminatorable
  likes_to_protect [:john_connor, :sarah_connor]
end
