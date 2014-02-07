module Terminatorable

  module ClassMethods

    def likes_to_protect(people=[])
        people.each do |person|
          define_method "protect_#{person}!" do
            @current_mission = "protect: #{person}"
          end
        end
    end

    def likes_to_destroy(people=[])
        people.each do |person|
          define_method "destroy_#{person}!" do
            @current_mission = "destroy: #{person}"
          end
        end
    end

    
  end

  def self.included(klass)
    attr_reader :current_mission, :good
    klass.extend Terminatorable::ClassMethods
  end

  def protects?(person)
    methodize = "protect_#{person.downcase!.sub(' ','_')}!"
    self.respond_to?(methodize) 
  end

  def good?
    @current_mission[0..7] == 'protect:'
  end
  
end
