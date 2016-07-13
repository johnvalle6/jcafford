class CreateNewaplications < ActiveRecord::Migration
  def change
    create_table :newaplications do |t|

      t.timestamps null: false
    end
  end
end
