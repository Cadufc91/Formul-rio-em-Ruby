class AddArquivoToPessoas < ActiveRecord::Migration[7.1]
  def change
    add_column :pessoas, :arquivo, :string
  end
end
