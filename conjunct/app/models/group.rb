class Group < ActiveRecord::Base
   attr_accessible :name, :descrption
     has_and_belongs_to_many :users
end
