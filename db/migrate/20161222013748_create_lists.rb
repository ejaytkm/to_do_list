class CreateLists < ActiveRecord::Migration[5.0]
  def up
    create_table :lists do |t|
    	t.string	:title 
    	t.string	:description
      t.timestamps
    end
  end

  def down 
  	drop_table :lists 
  end 
end
