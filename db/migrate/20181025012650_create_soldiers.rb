class CreateSoldiers < ActiveRecord::Migration[5.2]
  def change
    create_table :soldiers do |t|
      t.string :name
      t.integer :age
      t.references :squadron, foreign_key: true

      t.timestamps
    end
  end
end
