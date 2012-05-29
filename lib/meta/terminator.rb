class Terminator
	attr_accessor :current_mission

	def initialize
		@current_mission = ''
	end

	def method_missing sym
		if sym =~ /^(protect|destroy)_(\w+_\w+)!/
			@current_mission = "#{$1}: #{$2}"
		end
	end
end
