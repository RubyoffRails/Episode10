Episode 10 - Meta Terminator
=====================

Meta Programming in Ruby


```
#class GoodTerminator
#  likes_to_protect [:john_connor, :sarah_connor]
#  likes_to_destroy []
#end
#
#class BadTerminator
#  likes_to_protect []
#  likes_to_destroy [:john_connor, :sarah_connor]
#end
```

Panda Level
-----------

1. Implement a method "protects?" where you can pass in the name of a person to check if he protects them
2. Create a method in the Terminatorable module called "good?" that will tell if a Terminator is good or bad
3. Create a spec that if the Terminator is trying to destroy someone, they are bad

Tiger Level
-----------

1. Create the GoodTerminator and BadTerminator classes
2. Update the specs to test the GoodTerminator and Bad Terminator

Eagle Level
-----------

1. Split the methods into `likes_to_protect` and `likes_to_destroy`
2. Alternatively, rename to `configuration` that accepts a hash of people to protect and people to destroy

Copyright
---------

Copyright: 2012 Jesse Wolgamott, MIT License (See LICENSE)
