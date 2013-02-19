module Terminatorable

  module ClassMethods
    def likes_to_protect(people=[])
        people.each do |person|
          define_method "protect_#{person}!" do
            @current_mission = "protect: #{person}"
          end
        end

      define_method :good? do
        ['protect: john_connor','protect: sarah_connor'].include?(@current_mission)
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
    attr_reader :current_mission
    klass.extend Terminatorable::ClassMethods
  end
end
