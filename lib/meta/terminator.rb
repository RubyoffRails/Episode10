class GoodTerminator
	include Terminatorable
	likes_to_protect [:john_connor, :sarah_connor]
	likes_to_destroy # defaults to an empty array, no args needed
end

class BadTerminator
	include Terminatorable
	likes_to_protect # defaults to an empty array, no args needed
	likes_to_destroy [:john_connor, :sarah_connor]
end
