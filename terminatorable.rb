

# when you include a module into a Ruby class, 
# the instance methods in that module becomes
# availabe as instance methods of the class.
# multiple classes can inherit from a single module

module Terminatorable

  module ClassMethods

    def likes_to_protect(people=[]) 
      ["destroy", "protect"].each do |mission_type|
        people.each do |person|
          define_method "#{mission_type}_#{person}!" do 
            @current_mission = "#{mission_type}: #{person}"
          end  
        end
      end     
    end
  end

  def self.included(klass)
      attr_reader :current_mission
    klass.extend Terminatorable::ClassMethods 
  end
end