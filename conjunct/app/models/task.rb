class Task < ActiveRecord::Base
  attr_accessible :task_name, :description, :deadline, :owner_id
  has_and_belongs_to_many :users
end
