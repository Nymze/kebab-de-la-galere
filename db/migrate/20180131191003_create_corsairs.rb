class CreateCorsairs < ActiveRecord::Migration[5.1]
  def change
    create_table :corsairs do |t|
      t.string :first_name
      t.integer :age
      t.string :likeness

      t.timestamps
    end
  end
end
