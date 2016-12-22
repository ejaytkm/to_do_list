class Addindextolists < ActiveRecord::Migration[5.0]
  def change
  	add_reference :tasks, :list, index:true
  end
end
