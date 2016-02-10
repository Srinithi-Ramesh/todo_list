class CreateToDoNotes < ActiveRecord::Migration
  def change
    create_table :to_do_notes do |t|
      t.string :title
      t.string :notes
      t.integer :user_id
      t.boolean :done

      t.timestamps null: false
      
    end
  end
end
