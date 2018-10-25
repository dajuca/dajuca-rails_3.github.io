class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.datetime :stroll_date
      t.references :dog, foreign_key: true
      t.references :dogsitter, foreign_key: true

      t.timestamps
    end
  end
end
