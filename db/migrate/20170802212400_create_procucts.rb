class CreateProcucts < ActiveRecord::Migration[5.1]
  def change
    create_table :procucts do |t|
      t.string :name

      t.timestamps
    end
  end
end
