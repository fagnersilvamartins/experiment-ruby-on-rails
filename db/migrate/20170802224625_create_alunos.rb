class CreateAlunos < ActiveRecord::Migration[5.1]
  def change
    create_table :alunos do |t|
      t.string :name
      t.integer :quant

      t.timestamps
    end
  end
end
