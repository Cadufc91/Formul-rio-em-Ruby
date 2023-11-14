class AddSexoToPessoas < ActiveRecord::Migration[7.1]
  def change
    add_column :pessoas, :sexo, :string
  end
end
