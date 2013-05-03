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

    def good
      define_method :good? do
        if !current_mission.nil?
          @current_mission.include?("protect")
        else
          true
        end
      end
    end
  end

  def self.included(klass)
    attr_reader :current_mission
    klass.extend Terminatorable::ClassMethods
  end
end
