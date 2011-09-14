class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :description
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
