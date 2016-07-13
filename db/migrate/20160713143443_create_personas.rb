class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :email
      t.string :telefono

      t.timestamps null: false
    end
  end
end
