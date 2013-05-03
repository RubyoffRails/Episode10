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
