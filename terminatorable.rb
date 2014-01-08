

# when you include a module into a Ruby class, 
# the instance methods in that module becomes
# availabe as instance methods of the class.
# multiple classes can inherit from a single module

module Terminatorable

  module ClassMethods

    def likes_to_protect(people={}) 
      people.first.fetch(:protect).each do |person|
      #people.each do |person|
        define_method "protect_#{person}!" do 
          @current_mission = "protect: #{person}"
        end  
      end    
    end

    def likes_to_destroy(people=[]) 
      people.first.fetch(:destroy).each do |person|
        define_method "destroy_#{person}!" do 
          @current_mission = "destroy: #{person}"
        end  
      end   
    end

  def good
    define_method :good? do
       @current_mission.include?("protect")
    
    end
  end
end

  def self.included(klass)
      attr_reader :current_mission
    klass.extend Terminatorable::ClassMethods 
  end
end