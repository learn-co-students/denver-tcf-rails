class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :manager, foreign_key: {to_table: :employees}
      t.integer :head_count

      t.timestamps
    end
  end
end
