class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.boolean :active
      t.date :birthday
      t.datetime :register
      t.float :height

      t.timestamps
    end
  end
end
