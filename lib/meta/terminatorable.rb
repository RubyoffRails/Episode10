module Terminatorable
	module ClassMethods
		['destroy', 'protect'].each do |action|
			define_method "likes_to_#{action}" do |people=[]|
				people.each do |person|
					define_method "#{action}_#{person}!" do
						@current_mission = "#{action}: #{person}"
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
