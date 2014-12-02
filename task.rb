require 'json'

class Task
	attr_accessor :objective

	def initialize(objective)
		@objective = objective.to_s
	end

	def save
		if @objective.nil? or @objective.empty?
			return false
		end

		File.open("#{Dir.home}/.tasks/#{@objective}.task", "w")	do |file|
			content = { objective: @objective }
			file.write(JSON.generate(content))
		end

		true
	end
end
