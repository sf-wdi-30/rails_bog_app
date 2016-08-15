class CreateCreatures < ActiveRecord::Migration
  def up
   add_attachment :creatures, :avatar
 end

 def down
   remove_attachment :creatures, :avatar
 end

  def change
    create_table :creatures do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
