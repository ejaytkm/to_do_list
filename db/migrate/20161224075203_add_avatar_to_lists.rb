class AddAvatarToLists < ActiveRecord::Migration[5.0]
  def up
    add_column :lists, :avatar, :string
  end

  def down 
  	remove_column :lists, :avatar, :string 
  end
end
