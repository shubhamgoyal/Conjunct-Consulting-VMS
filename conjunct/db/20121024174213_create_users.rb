class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "name", :limit => 50
      t.string "nric", :limit => 50
      t.string "phone", :limit => 10
      t.string "email", :limit => 50
      t.string "password", :limit => 300
      t.timestamps
    end
  end
end
