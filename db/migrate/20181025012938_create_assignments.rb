class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :operation_code
      t.references :soldier, foreign_key: true
      t.references :planet, foreign_key: true

      t.timestamps
    end
  end
end
