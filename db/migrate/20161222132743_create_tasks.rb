class CreateTasks < ActiveRecord::Migration[5.0]
  def up
    create_table :tasks do |t|
    	t.string :description
    	t.string :status    	
      t.timestamps
    end
  end

  def down 
  	drop_table :tasks 
  end 
end
