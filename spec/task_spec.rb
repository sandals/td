require 'spec_helper'

describe Task do
	before :each do
		@task = Task.new("objective")
	end

	describe "#save" do
		it "can not be saved without an objective" do
			@task.objective = nil

			expect(@task.save).to eq(false)
		end

		it "saves to a task file" do
		end
	end
end
