class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :content, :null => false
      t.integer :competition_id, :null => false

      t.timestamps
    end
  end
end
