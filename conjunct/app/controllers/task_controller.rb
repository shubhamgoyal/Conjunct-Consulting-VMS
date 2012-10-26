class TaskController < ApplicationController
	def create
    @name = params[:name]
    @desc = params[:desc]
    @owner = params[:owner]
    @deadline = params[:deadline]
    puts @name
    if !@name.nil? && !@deadline.nil? && !@owner.nil?
      if !@desc.nil?
        task = Task.create(:task_name => @name, :owner_id => @owner, :description => @desc, :deadline => @deadline)
      else
        task = Task.create(:task_name => @name, :owner_id => @owner,:@deadline => @deadline)
      end
    end
	end
end
