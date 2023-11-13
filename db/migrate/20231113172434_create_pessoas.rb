class CreatePessoas < ActiveRecord::Migration[7.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :sobrenome
      t.integer :idade

      t.timestamps
    end
  end
end
