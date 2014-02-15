module Terminatorable

  module ClassMethods
    def likes_to_protect(people=[])
      ["destroy", "protect"].each do |mission_type|
        people.each do |person|
          define_method "#{mission_type}_#{person}!" do
            @current_mission = "#{mission_type}: #{person}"
            @protected_person = person if mission_type == "protect"
            @mission_type = mission_type
          end
        end
      end
    end
  end

  def self.included(klass)
    attr_reader :current_mission
    klass.extend Terminatorable::ClassMethods
    def protects?(person)
      @protected_person == person
    end
    def good?
      @mission_type == "protect"
    end
  end
end
