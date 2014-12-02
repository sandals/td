class Task
	attr_accessor :objective

	def initialize(objective)
		@objective = objective.to_s
	end

	def save
		if @objective.nil? or @objective.empty?
			false
		end
	end
end
